require "open3"

def DecBin(n);

end

def Ports(ports)
  ps = ""
  ports.each do |k, v|
    ps += "\t\t\t#{k}: #{v} std_logic"

    ps += ";" if k != ports.keys.last
    ps += "\n"
  end

  return ps
end


def TestBench(name_entity, ports, ps)
  signals = ""
  ports.each do |k, v|
    if k != ports.keys.last
      signals += "\t\t\tsignal #{k}_tb: std_logic := '0';\n"
    else
      signals += "\t\t\tsignal #{k}_tb: std_logic;\n"
    end
  end

  pm = ""
  ports.each_key do |k|
    pm += "\t\t\t#{k} => #{k}_tb"
    pm += ";" if k != ports.keys.last
    pm += "\n"
  end

  ts = []
  ports.each { |k, v| ts << k if v == 'in' }
  tests = ""
  div = ts.length + 1
  val = Array.new(ts.length, 0)
  i_aux = val.length - 1
  aux = 0
  
  (ts.length * 2).times do |i|
    j = 0
    ts.each do |k|
      tests += "\t\t\t#{k}_tb <= '#{val[j]}';\n"
      
      j += 1
    end
    tests += "\t\t\twait for 10 ns; \n\n"

    if i_aux != 0 and aux == 0
      if i_aux < val.length - 1
        val[i_aux] += 1
        val[i_aux+1] -= 1
        puts "#{val}"
      else
        val[i_aux] += 1 if i_aux < val.length and i_aux != 0
      end
      i_aux -= 1
    else
      val.map!{ |v| v = 0 } if i_aux == 0

      val[i_aux] += 1

      i_aux += 1
    end
  end
tests += "\t\t\twait;"

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
    ghdl_v += "-- #{l}"
  end

  
  code = <<-EOM
-- Development name: Hector Manuel Barrios Barrios
-- Operating System: #{Open3.capture2("uname -o")[0]}
-- Kernel version: #{Open3.capture2("uname -r")[0]}
-- ghdl version: #{ghdl_v}
-- date create: #{Open3.capture2("date")[0]}

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
  puts "Nombre del puerto , un espacio y tipo"
  p = gets.chomp.split(" ")
  h_port[p[0]] = p[1]
end

#template = TemplateCode(name_e, h_port)

Dir.mkdir(name_e) unless Dir.exist?(name_e)

entity = File.new("#{name_e}/#{name_e}.vhdl", "w")
entity.write(TemplateCode(name_e, Ports(h_port)))
entity.close

testfile = File.new("#{name_e}/testbench.vhdl", "w")
testfile.write(TestBench(name_e, h_port, Ports(h_port)))
testfile.close

mf = File.new("#{name_e}/makefile", "w")
mf.write(Makefile(name_e))
mf.close
