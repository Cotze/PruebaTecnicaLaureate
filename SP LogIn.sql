--SP para inicio de sesion
CREATE PROCEDURE LoginUsuario 
	@Usuario VARCHAR(10),
	@Contraseņa VARCHAR(8)
AS
BEGIN
	
	SELECT id, Nombre, ApellidoPaterno, ApellidoMaterno, FechaNacimiento, Edad, Fotografia, Puesto, Salario FROM Empleados WHERE Usuario = @usuario AND Contraseņa = @Contraseņa
END
GO