USE ventas;
/*
  Para eliminar una tabla de un base de datos se utiliza la setencia DROP TABLE tbNombre
  en el siguiente ejemplo se elimina las base de datos tb1 y tb2
*/
DROP TABLE tb1;
DROP TABLE tb2;
/*
 la integridad dentro de las base de datos garantiza que los datos 
 se consistente e integro.
 las restricciones son:
    NOT NULL:
    UNIQUE
    PRIMARY KEY
    DEFAULT
    FOREIGN KEY
*/
/* La restricción NOT NULL una restriccion not null especifica que columna 
   no permite valores vacion.
   SINTAXIS:
       colNombre tipo NOT NULL
    en el siguiete ejemplo se crea una tabla llamado producto con las columna id y marca 
    con la restriccion NOT NULL
*/
CREATE TABLE producto(
    codProc CHAR(5) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    cantidad INT
);
/*Las restricciones UNIQUE especifica que el valor de una columna debe ser unica para registro
  es decir, el codigo de un proveedor debe ser unica para cada provedor y no puede haber dos 
  proveedore con el mismo codigo. en el siguiente ejemplo se cre una tabla con una restriccion UNIQUE 
  a la column idProveedor
  Sintaxis:
   (1)colNombre tipo UNIQUE
*/
CREATE TABLE proveedor (
    idProveedor INT UNIQUE
    nombre VARCHAR(50) NOT NULL,
    direccion TEXT
);
/*De forma alternativa se puede agregar un restriccion UNIQUE de la siguiente manera:
  (1) CONTRAINT UNIQUE(colnombre1, .. colnombreN)
  (2) ALTER TABLE proveedor
           UNIQUE(colnombre1,... colnombreN)
*/
ALTER TABLE proveedor 
  ADD CONSTRAINT pk_producto
  PRIMARY KEY(codProc);

/*
  La restriccion PRIMARY KEY al igual UNIQUE son restricion que no permite un mismo valor
  para dos registro, una de las diferencia más clara que se tiene con las primera es que no 
  permite almacenar un registro null, como es el caso del segundo.

*/
CREATE TABLE factura(
    cod_fac INT PRIMARY KEY, /*(1)*/
    fecha DATE NOT NULL,
    cliente int NOT NULL
    /*(2)*/
   /*CONSTRANT <nombre>
   PRIMARY KEY(cod_fac[,..., colN])[,..]
   */
);
/*(3)
  ALTER TABLE factura
    ADD CONTRAINT pk_factura
        PRIMARY KEY(cod_fac);
*/

/*La restricción FOREING KEY*/
CREATE TABLE producto_proveedor(
  codProc CHAR(5),
  idProveedor INT,
  CONSTRAINT pk_producto_proveedor
  PRIMARY KEY(codProc, idProveedor)
);
/*definir la column codProc en la tabla producto_proveedor  */
ALTER TABLE producto_proveedor
  ADD CONSTRAINT FK_Producto
  FOREIGN KEY(codProc) REFERENCES producto(codProc);
/*definir la column idproveedor en la tabla producto como llave primaria */
ALTER TABLE producto
  ADD COLUMN idProveedor int not null;
/*definir la columna idproveedor de la tabla producto como llave foranea*/
ALTER TABLE producto
  ADD CONSTRAINT fk_producto_proveedor
  FOREIGN KEY(idproveedor) REFERENCES proveedor(idproveedor);

