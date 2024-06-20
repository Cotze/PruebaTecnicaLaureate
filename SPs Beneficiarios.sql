--Crear beneficiario
CREATE PROCEDURE CrearBeneficiario 
	@id VARCHAR(255),
	@Nombre VARCHAR(30),
    @ApellidoPaterno VARCHAR(10),
	@ApellidoMaterno VARCHAR(10),
	@Parentesco VARCHAR(25),
	@Empleado VARCHAR(255)
AS
BEGIN
	INSERT INTO Beneficiarios(id, Nombre, ApellidoPaterno, ApellidoMaterno, Parentesco, Empleado) VALUES (@id, @Nombre, @ApellidoPaterno, @ApellidoMaterno, @Parentesco, @Empleado)
END
GO

CREATE PROCEDURE ActualizarBeneficiario 
	@Nombre VARCHAR(30),
    @ApellidoPaterno VARCHAR(10),
	@ApellidoMaterno VARCHAR(10),
	@Parentesco VARCHAR(25),
	@id VARCHAR(255)
AS
BEGIN
	UPDATE Beneficiarios SET Nombre = @Nombre, ApellidoPaterno = @ApellidoPaterno, ApellidoMaterno = @ApellidoMaterno, Parentesco = @Parentesco WHERE id = @id
END
GO

CREATE PROCEDURE ObtenerBeneficiarioPorEmpleado 
	@id VARCHAR(255)
AS
BEGIN
	SELECT id, Nombre, ApellidoPaterno, ApellidoMaterno, Parentesco FROM Beneficiarios WHERE Empleado = @id
END
GO

