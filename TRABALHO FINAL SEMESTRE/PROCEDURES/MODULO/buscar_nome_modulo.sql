CREATE PROCEDURE dbo.nome_modulo
AS
SELECT m.nm_modulo
FROM TB_Modulo AS m

GO

EXEC dbo.nome_modulo