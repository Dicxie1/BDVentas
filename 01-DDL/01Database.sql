/*
 * Para CREAR una base de datos se utiliza la clausula CREATE.
 * Sintaxis:
    CREATE {DATABASE | SCHEMA } [IF NOT EXISTS] dbnombre;

    donde: 
        DATABASE Y SCHEMA: son sinonimo y puede intercambiable entre ambas.
        IF NOT EXISTS: opcional donde especifica la creaciòn de la base de datos ni no existe con el mismo nombres
        dbnombre: hace referencias al nombre de la base de dato
 * 
*/
/*Creación de la base de datos con el nombre Ventas**/
CREATE DATABASE Ventas;
/*el anterior base de datos creado pudo haberce creado con la palabra SCHEMA
  ejemplo:
  CREATE SCHEMA Ventas
*/
/*Crear dos base de datos llamados db1 , db2*/
CREATE DATABASE db1;
CREATE DATABASE db2;

/*Mostrar base de datos creados con la setencias SHOW DATABASES*/
SHOW DATABASES;

/*Para modificar para modificar una base de datos se utiliza la setencias ALTER. 
  A las base de datos unicamente se le puede modificar los COLLACTION que su funcion es definir
  cómo debe comparar el texto y/o ordenarlo
  Sintaxis:
    ALTER DATABASE dbnombre opcions.
*/
ALTER DATABASE Ventas COLLATE utf8_bin;
/*otros ejemplos de moficaciòn*/
ALTER DATABASE db1 COLLATE ascii_bin; 
ALTER DATABASE db2 COLLATE latin1_bin; 

/*
   Con la setencia DROP es utilizado para eliminar una base de datos 
   Sintaxis:
   DROP{DATABASE | SCHEMA} [IF EXISTS] dbnombre;
   Ejemplo:

*/
DROP DATABASE db1;
DROP DATABASE db2;