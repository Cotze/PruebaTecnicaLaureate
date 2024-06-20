CREATE DATABASE PruebaTecnicaLaureate;

CREATE TABLE Empleados (
    id VARCHAR(255) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(30),
    ApellidoPaterno VARCHAR(10),
	ApellidoMaterno VARCHAR(10),
	FechaIngreso DATETIME,
	FechaNacimiento VARCHAR(10),
	Edad INT,
	Fotografia VARCHAR(MAX),
	Puesto VARCHAR(20),
	Salario DECIMAL,
	Usuario VARCHAR(8) NOT NULL,
	Contraseña VARCHAR(MAX) NOT NULL
);

CREATE TABLE Beneficiarios (
    id VARCHAR(255) NOT NULL,
    Nombre VARCHAR(30),
    ApellidoPaterno VARCHAR(10),
	ApellidoMaterno VARCHAR(10),
	Parentesco VARCHAR(25),
	Empleado VARCHAR(255) FOREIGN KEY REFERENCES Empleados(id)
);