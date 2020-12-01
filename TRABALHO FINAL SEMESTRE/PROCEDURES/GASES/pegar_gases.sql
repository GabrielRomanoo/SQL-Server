CREATE PROCEDURE dbo.pegar_gases
AS
SELECT a.nm_gas
FROM dbo.TB_Gas AS a

GO

exec dbo.pegar_gases