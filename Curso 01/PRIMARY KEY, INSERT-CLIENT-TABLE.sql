ALTER TABLE [dbo].[TABELA DE CLIENTES]
ALTER COLUMN CPF VARCHAR(11) NOT NULL

ALTER TABLE [dbo].[TABELA DE CLIENTES]
ADD CONSTRAINT PK_CLIENTES
PRIMARY KEY CLUSTERED ([CPF])

INSERT INTO [dbo].[TABELA DE CLIENTES] -- para gerar o inster: dbo.TABELA DE CLIENTES -> Script de tabela como -> INSERT para -> consulta
           ([CPF]
           ,[NOME]
           ,[ENDERECO 1]
           ,[ENDERECO 2]
           ,[BAIRRO]
           ,[CIDADE]
           ,[ESTADO]
           ,[CEP]
           ,[DATA DE NASCIMENTO]
           ,[IDADE]
           ,[SEXO]
           ,[LIMITE DE CREDITO]
           ,[VOLUME DE COMPRA]
           ,[PRIMEIRA COMPRA])
     VALUES
           ('00300000001',
		   'João da Silva',
		   'Rua Projetada A, número 10',
		   '',
		   'Centro',
		   'Rio de Janeiro',
		   'RJ',
		   '20000000',
		   '1990-10-25', --ANO-MES-DIA (forma de input valida para qualquer tipo de configuração no banco de dados)
		   27,
		   'M',
		   120000.50,
		   1000,
		   1)