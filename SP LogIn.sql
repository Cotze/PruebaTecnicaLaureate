--SP para inicio de sesion
CREATE PROCEDURE LoginUsuario 
	@Usuario VARCHAR(10),
	@Contrase�a VARCHAR(8)
AS
BEGIN
	
	SELECT id, Nombre, ApellidoPaterno, ApellidoMaterno, FechaNacimiento, Edad, Fotografia, Puesto, Salario FROM Empleados WHERE Usuario = @usuario AND Contrase�a = @Contrase�a
END
GO