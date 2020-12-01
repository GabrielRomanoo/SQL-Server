CREATE PROCEDURE dbo.pegar_niveis
AS
SELECT n.nm_nivel
FROM dbo.TB_Nivel AS n

GO

EXEC dbo.pegar_niveis