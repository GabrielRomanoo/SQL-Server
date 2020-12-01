CREATE PROCEDURE dbo.buscar_funcionario (
  @email VARCHAR(50) = NULL,
  @senha VARCHAR(50) = NULL
)

AS

IF @email IS NULL AND @senha IS NULL 
BEGIN
  SELECT
    0 success,
    'Não existe argumento na entrada.' msg
  RETURN 1;
END

SELECT TOP 1 f.nm_funcionario, n.nm_nivel
	FROM dbo.TB_Funcionario AS f
	INNER JOIN TB_Nivel n ON n.id_nivel = f.id_nivel
	WHERE f.nm_email = @email AND f.cd_senha = @senha
GO

EXEC dbo.buscar_funcionario @email = 'gabriel@hotmail.com', @senha = '3222'