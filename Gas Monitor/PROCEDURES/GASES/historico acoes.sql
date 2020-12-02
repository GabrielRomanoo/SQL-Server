CREATE PROCEDURE dbo.historico_gases(
  @nome VARCHAR(50) = NULL,
  @data VARCHAR(50) = NULL
)

AS

IF  @nome IS NULL AND @data IS NULL 
BEGIN
  SELECT
    0 success,
    'Não existe argumento na entrada.' msg
  RETURN 1;
END

SELECT TOP 1 a.nm_acao, ra.dt_acao 
	FROM dbo.TB_Funcionario AS f
	INNER JOIN TB_Relatorio_Acoes ra ON ra.id_funcionario = f.id_funcionario
	INNER JOIN TB_Acao as a ON a.id_acao = ra.id_acao
	WHERE f.nm_funcionario = @nome AND ra.dt_acao = CONVERT(DATETIME, @data, 103)
GO

EXEC dbo.historico_gases @nome = 'Jaime Mathias', @data= '22-10-2020'

DROP PROCEDURE dbo.historico_gases

