require "open3"
#require "curses"

=begin
def FindFile
  Curses.init_screen
  Curses.noecho
  Curses.cbreak
  Curses.curs_set(0)
  Curses.stdscr.keypad(true)

  Curses.addstr("Escribe el nombre de la solucion")
  select_file = Curses.getstr

  Curses.close_screen

  select_file.strip
end

file = FindFile()
puts file
=end
def Solution(name)
  comp = "\t\tcomponent #{name} is \n"

  while true
    if Dir.exist?(name)
      solut = File.read("#{name}/#{name}.vhdl")

      i = false
      f = true
      solut.each_line do |l|
        if i and f
          comp += "\t\t\t#{l} \n"
          f = false if l == ");"
          puts f, l
          sleep(3)
        else
          i = true if l.split(" ").include?("entity")
        end
      end
      comp += "\t\t end component;"
      puts "#{comp}"
      break
    else
      puts "No existe un solucion con ese nombre, favor de escribir el nombre de nuevo:"
      name = gets.chomp
    end
  end
end
s = gets.chomp
Solution(s)


def DecBin(n, ints)
  bin = Array.new(ints, '0')

  i = 0
  loop do
    bin[i] = (n % 2).to_s
    n /= 2
    i += 1
    break if n == 0
  end

  return bin.reverse
end


def Ports(ports)
  ps = ""
  ports.each do |k, v|
    len = v[1].to_i
    size = (len > 1)? "std_logic_vector (#{len-1} downto 0)" : "std_logic"
    ps += "\t\t\t#{k}: #{v[0]} #{size}"

    ps += ";" if k != ports.keys.last
    ps += "\n"
  end

  return ps
end


def TestBench(name_entity, ports, ps)
  signals = ""
  ports.each do |k, v|
    len = v[1].to_i
    if v[0] == "in"
      size = (len > 1)? "std_logic_vector(#{len-1} downto 0) := \"#{"0"*len}\"" : "std_logic := '0'"
      signals += "\t\t\tsignal #{k}_tb: #{size};\n"
    else
      size = (len > 1)? "std_logic_vector(#{len-1} downto 0)" : "std_logic"
      signals += "\t\t\tsignal #{k}_tb: #{size};\n"
    end
  end

  pm = ""
  ports.each_key do |k|
    pm += "\t\t\t#{k} => #{k}_tb"
    pm += ";" if k != ports.keys.last
    pm += "\n"
  end

  tests = ""
  ts = []
  auto = true
  ports.each do |k, v| 
    ts << k if v[0] == 'in'
    auto = false if v[1].to_i > 1
  end
  
  if auto
  (2 ** ts.length).times do |i|
    val = DecBin(i, ts.length)

    ts.each_with_index do |v, index|
      tests += "\t\t\t#{v}_tb <= '#{val[index]}';\n"
    end

    tests += "\t\t\twait for 10 ns; \n\n"

  end
tests += "\t\t\twait;"
  end

  test = <<-EOM
-- Tests of the entity #{name_entity}
library ieee;
use ieee.std_logic_1164.all;

entity TestBench is
end TestBench;

architecture #{name_entity}_test of TestBench is

#{signals}

        component #{name_entity}
            port(
  #{ps}
            );
        end component;

begin
        uut: #{name_entity}
        port map(
#{pm.gsub(';', ',')}
        );

        stim_proc: process
        begin
              -- aqui van los casos de prueba
              -- ejemplo:
              -- a_tb <= '0';
              -- b_tb <= '0';
              -- wait for 10 ns; tiempo de espera
              -- wait;
#{tests}
        end process;
end #{name_entity}_test;
  EOM

  return test
end


def TemplateCode(name_entity, ports)

  ghdl_v = ""
  Open3.capture2("ghdl --version")[0].each_line do |l|
    ghdl_v += "-- #{l.chomp}\n"
  end

  
  code = <<-EOM
-- ************************************************************************************************
-- Development name: Hector Manuel Barrios Barrios                                   
-- Operating System: #{Open3.capture2("uname -o")[0]}                                
-- Kernel version: #{Open3.capture2("uname -r")[0]}                                  
-- ghdl version: #{ghdl_v}                                                           
-- date create: #{Open3.capture2("date")[0]}                                         
-- ************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;

entity #{name_entity} is
        
       port(
#{ports}
       );

end #{name_entity};

architecture #{name_entity} of #{name_entity} is
        
begin

end #{name_entity};
  EOM

  return code

end


def Makefile(entity_name)
  mkfile = <<-EOM
VHDL_FILE = #{entity_name}
TEST_FILE = testbench

all: compile run

compile:
	ghdl -a $(VHDL_FILE).vhdl\t$(TEST_FILE).vhdl
	ghdl -e $(TEST_FILE)

run:
	ghdl -r $(TEST_FILE) --vcd=testbench.vcd

clean:
	ghdl --clean
	rm -f $(VHDL_FILE) $(TEST_FILE)

  EOM
end

puts "Nombre de la entidad: "
name_e = gets.chomp
puts "Numero de puertos"
n_ports = gets.chomp.to_i
h_port = {}

n_ports.times do |i|
  puts "Separados por un espacio, escribe el nombre, tipo y tamaño del puerto:"
  p = gets.chomp.split(" ")
  h_port[p[0]] = [p[1], p[2]]
end

#template = TemplateCode(name_e, h_port)

Dir.mkdir(name_e) unless Dir.exist?(name_e)

main = Thread.new do 
  entity = File.new("#{name_e}/#{name_e}.vhdl", "w")
  entity.write(TemplateCode(name_e, Ports(h_port)))
  entity.close
end

test = Thread.new do
  testfile = File.new("#{name_e}/testbench.vhdl", "w")
  testfile.write(TestBench(name_e, h_port, Ports(h_port)))
  testfile.close
end

make = Thread.new do
  mf = File.new("#{name_e}/makefile", "w")
  mf.write(Makefile(name_e))
  mf.close
end

main.join
test.join
make.join
system("clear")
fin = Time.now

puts "\n\t>>>Proyecto #{name_e} creado con exito<<<\n"
puts "Se crearon los siguientes archivos, dentro de la carpeta #{name_e}"
Dir.chdir(name_e)
system("ls -1")
