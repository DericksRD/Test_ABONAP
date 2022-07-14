CREATE OR ALTER PROCEDURE Buscar_Prestamo
	@Codigo VARCHAR(30)
AS
BEGIN
	SELECT 
		p.Monto, p.IdCliente, 
		CONCAT(per.Nombres, ' ', per.PrimerApellido, ' ', per.SegundoApellido) 
			AS Nombre
	FROM Prestamos p
	INNER JOIN Clientes c
		ON p.IdCliente = c.IdCliente
	INNER JOIN Personas per
		ON c.IdPersona = per.IdPersona
	WHERE p.Codigo = @Codigo;
END
go

Buscar_Prestamo 'PRES00001';