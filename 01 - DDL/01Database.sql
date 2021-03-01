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