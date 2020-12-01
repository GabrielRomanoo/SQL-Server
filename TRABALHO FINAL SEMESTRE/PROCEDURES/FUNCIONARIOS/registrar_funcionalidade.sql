CREATE PROCEDURE dbo.registrar_funcionalidade (
	@funcionalidade int,
	@funcionario int
)
	
AS

INSERT INTO dbo.TB_Funcionalidade_Extra VALUES
(@funcionario, @funcionalidade, DATEADD(day, 10, GETDATE()))

GO

EXEC dbo.registrar_funcionalidade @funcionalidade = 1, @funcionario = 1