CREATE DATABASE NominaHR;
USE NominaHR; 

CREATE TABLE Areas (
AreaID INT PRIMARY KEY,
NombreArea VARCHAR (50)
);

CREATE TABLE Roles (
RolID INT PRIMARY KEY,
NombreRol VARCHAR (50)
);

CREATE TABLE Empleados (
EmpleadoID INT PRIMARY KEY,
Nombre VARCHAR (50),
Apellido VARCHAR (50),
FechaNacimiento DATE,
Direccion VARCHAR (100),
Email VARCHAR (100),
AreaID INT FOREIGN KEY REFERENCES Areas (AreaID),
Posicion VARCHAR (50),
FechaIngreso DATE,
RolID INT FOREIGN KEY REFERENCES Roles (RolID)
);

CREATE TABLE Salarios(
SalarioID INT PRIMARY KEY,
EmpleadoID INT FOREIGN KEY REFERENCES Empleados (EmpleadoID),
Salario DECIMAL (10,2), 
);

CREATE TABLE Permisos (
PermisoID INT PRIMARY KEY,
NombrePermiso VARCHAR (50)
);

CREATE TABLE EmpleadosPermisos (
EmpleadoID INT FOREIGN KEY REFERENCES Empleados (EmpleadoID),
PermisoID INT FOREIGN KEY REFERENCES Permisos (PermisoID),
PRIMARY KEY (EmpleadoID, PermisoID)
);

SELECT * FROM Areas;
SELECT * FROM Roles;
SELECT * FROM Empleados;
SELECT * FROM Salarios;
SELECT * FROM Permisos;
SELECT * FROM EmpleadosPermisos;
