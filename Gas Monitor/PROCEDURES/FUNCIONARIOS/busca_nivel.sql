CREATE PROCEDURE dbo.busca_nivel_funcionario(
  @nome VARCHAR(50) = NULL
)

AS

IF  @nome IS NULL
BEGIN
  SELECT
    0 success,
    'Não existe argumento na entrada.' msg
  RETURN 1;
END

SELECT TOP 1 n.nm_nivel
	FROM dbo.TB_Funcionario AS f
	INNER JOIN TB_Nivel as n ON n.id_nivel = f.id_nivel
	WHERE f.nm_funcionario = @nome
GO

INSERT INTO dbo.TB_Funcionalidade_Extra VALUES
		(1, 2, '31-10-20')

EXEC dbo.busca_nivel_funcionario @nome = 'Jaime Mathias'

DROP PROCEDURE dbo.busca_nivel_funcionario

