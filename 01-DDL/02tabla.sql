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