<h1 align="Center">Consultas SQL</h1>

## Creacion de tablas 

En primer lugar creamos las tablas de Propietarios y la tablas de vehiculos

- TABLA DE PROPIETARIOS

```sql
CREATE TABLE Propietarios (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nombre TEXT NOT NULL,
apellido TEXT NOT NULL,
dni TEXT UNICODE);
```
- TABLA DE VEHICULOS 

```sql
CREATE TABLE Vehiculos (
id INTEGER PRIMARY KEY AUTOINCREMENT,
marca TEXT NOT NULL,
modelo TEXT NOT NULL,
anio INTEGER NOT NULL,
id_propietario INTEGER   references Propietarios(id));
```
:warning: Relacionar la id_propietario como FK en la tabala Propietario

## Insercion de Informacion 

Añadimos la informacion de todos los Propietarios

```sql
INSERT INTO Propietarios (nombre,apellido,dni) 
VALUES('Juan','Perez','12345678A');

INSERT INTO Propietarios (nombre,apellido,dni) 
VALUES('Maria','Lopez','87654321B');

INSERT INTO Propietarios (nombre,apellido,dni) 
VALUES('Carlos','Ruiz','11111111C');

INSERT INTO Propietarios (nombre,apellido,dni)
VALUES ('Laura','Gomez','22222222D');

INSERT INTO Propietarios (nombre,apellido,dni)
VALUES('Pedro','Martinez','33333333E');

...

```

Y añadimos la informacion de los Vehículos 

```sql
INSERT INTO Vehiculos (marca,modelo,anio,id_propietario) 
VALUES('Ford','Fiesta',2019,1);

INSERT INTO Vehiculos(marca,modelo,anio,id_propietario) 
VALUES('Toyota','Corolla',2018,2);

INSERT INTO Vehiculos(marca,modelo,anio,id_propietario) 
VALUES('Nissan','Sentra',2020,3);

INSERT INTO Vehiculos(marca,modelo,anio,id_propietario)
VALUES('Chevrolet','Spark',2017,4);

INSERT INTO Vehiculos(marca,modelo,anio,id_propietario) 
VALUES('Honda','Civic',2016,5);

...
```
