CREATE PROCEDURE dbo.pegar_acoes
AS
SELECT a.nm_acao
FROM dbo.TB_Acao AS a

GO

EXEC dbo.pegar_acoes