--Empleados
CREATE PROCEDURE CrearEmpleado 
	@id VARCHAR(255),
	@Nombre VARCHAR(30),
    @ApellidoPaterno VARCHAR(10),
	@ApellidoMaterno VARCHAR(10),
	@FechaNacimiento VARCHAR(10),
	@Edad INT,
	@Fotografia VARCHAR(MAX),
	@Puesto VARCHAR(20),
	@Salario DECIMAL,
	@Usuario VARCHAR(8),
	@Contraseña VARCHAR(max)
AS
BEGIN
	INSERT INTO Empleados(id, Nombre, ApellidoPaterno, ApellidoMaterno, FechaIngreso, FechaNacimiento, Edad, Fotografia, Puesto, Salario, Usuario, Contraseña) VALUES (@id, @Nombre, @ApellidoPaterno, @ApellidoMaterno, SYSDATETIME(), @FechaNacimiento, @Edad, @Fotografia, @Puesto, @Salario, @Usuario, @Contraseña)
END
GO

CREATE PROCEDURE ActualizarEmpleado
    @id VARCHAR(255),
	@Nombre VARCHAR(30),
    @ApellidoPaterno VARCHAR(10),
	@ApellidoMaterno VARCHAR(10),
	@FechaNacimiento VARCHAR(10),
	@Edad INT,
	@Fotografia VARCHAR(MAX),
	@Puesto VARCHAR(20),
	@Salario DECIMAL
AS
BEGIN
	UPDATE Empleados SET Nombre = @Nombre, ApellidoPaterno = @ApellidoPaterno, ApellidoMaterno = @ApellidoMaterno, FechaNacimiento = @FechaNacimiento, Edad = @Edad, Fotografia = @Fotografia, Puesto = @Puesto, Salario = @Salario WHERE id = @id
END
GO


CREATE PROCEDURE ObtenerEmpleados 

AS
BEGIN
	SELECT id, Nombre, ApellidoPaterno, ApellidoMaterno, FechaIngreso, FechaNacimiento, Edad, Fotografia, Puesto, Salario FROM Empleados;
END
GO
