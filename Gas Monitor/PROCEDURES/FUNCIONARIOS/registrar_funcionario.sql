CREATE PROCEDURE dbo.registrar_funcionario (
	@empresa int,
	@nivel int,
	@email VARCHAR(50),
	@senha VARCHAR(50),
	@nome VARCHAR(50)
)
	
AS

INSERT INTO dbo.TB_Funcionario VALUES
(@empresa, @nivel, @email, @senha, @nome)

GO

EXEC dbo.registrar_funcionario @empresa = 1, @nivel = 2, @email = 'joao@hotmail.com', @senha = 'senha', @nome = 'João Pedro'