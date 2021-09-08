DROP TABLE IF EXISTS PERSONA;
DROP TABLE IF EXISTS PLANETA;
CREATE TABLE PLANETA
(  IDPLANETA IDENTITY PRIMARY KEY,
   NOMBRE VARCHAR(255),
   DESCRIPCION  VARCHAR(512),
   DIAMETRO DECIMAL(20,2),
   CLIMA VARCHAR(512),
   ROTACION VARCHAR(512),
   TERRENO VARCHAR(512),
   CONTADOR INT
  
 );

CREATE TABLE PERSONA
(  IDPERSONA IDENTITY PRIMARY KEY,
   NOMBRE VARCHAR(255),
   EDAD INT,
   ALTURA DOUBLE,
   PESO DOUBLE,
   GENERO VARCHAR(255),
   CONTADOR INT,
   IDPLANETA INT
   
 );
 
ALTER TABLE PERSONA
ADD FOREIGN KEY (IDPLANETA) 
REFERENCES PLANETA(IDPLANETA);