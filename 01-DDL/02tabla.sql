USE ventas;
/*para crear un tablas se utiliza la siguiente sintaxis:
    CREATE TABLE [IF NOT EXIST] tbname(
        definicion..
    );
    Donde:
        IF NOT EXISTS: setencias opcional que elimina las tablas unicamente si 
        exite previamente en la base de datos.
        dbnombre: nombre de la tabla.
        definicion: la definicion  son las coumnas que tendra la tabla. una tablas debe
        tener almenos una columna.
        
        una definición de columna siguie la siguiente sintaxis 
        colnombre tipo restricción [, colnombre1 tipo2 restricción]
*/

/*EL siguiente elemeplo se crea una tabla llamado tb1 con dos columnas llamadas colmuna1  y columna2*/
CREATE TABLE tb1(
    columa1 int,
    columna2 char(1)
);
/*El siguiete elemplo crea otro tabla con el nombre tb2 con las columna nombre y apellido*/
CREATE TABLE tb2(
    nombre int,
    apellido char(1)
);
/*El siguiente ejemplo se crea un tabla llamada tb3 dentro de la base de datos vetas*/
CREATE TABLE tb3
(
    cantidad unsigned int,
    precio double(12,2),
    total double(12,2) DEFAULT 0.0
);
/*Para elimianar una tabla se utiliza la setencia DROP TABLE
  Sintaxis:
    DROP TABLE tbNombre;
    Ejemplo: con la siguiente setencia se elimina la tablas tb3
*/
DROP TABLE tb3;