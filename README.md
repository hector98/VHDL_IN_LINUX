# VHDL_IN_LINUX
Ejercicios basicos en VHDL, para compilar con ghdl, y visualizar los datos en gtkwave, al igual de un pequño script en ruby para generar la estructura de un proyecto

Pasos para crear, compilar y ejecutar una proyecto VHDL
1. En la terminal dentro de la carpeta del repositoario escribimos "ruby new.rb" sin comillas, y damos enter.

2. Asignamos un nombre a nuestro proyecto, y damos enter.

3. escrbimos el numero de varibles que vamos a necesitar.

4. nombre y tipo de cada variable.

5. Hasta este punto ya el srcipt nos genero unas plantillas, para nuestro proyecto abrimos el archivo nombre_de_nuestro_proyeto.vhdl, que esta en la carpeta creada con el mismo nombre y comenzamos a escribir la logica de nuestro programa.

6. una vez terminado nuestro programa guardamos los cambios y nos dirigirmos a nuestra terminal, escribimos dentro de la carpeta de nuestro proyecto la palabra make y damos enter, esto nos va a copilar nuestro codigo, al igual que generarnos un nuevo archivo llamado testbench.vcd.

7. Escribimos en la termial "gtkwave testbench.vcd" sin las comillas y enter.

8. Y listo esto nos abrira gtkwave, para que podamos vizualizar nuestros datos.


"""Nota: Aun tengo problemas con el tema de docker asi que te recomiendo instalar ruby, ghdl y gtkwave en tu maquina """
