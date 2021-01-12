USE [VENDAS SUCOS]
GO

INSERT INTO [dbo].[CLIENTES]
           ([CPF]
           ,[NOME]
           ,[ENDEREÇO]
           ,[BAIRRO]
           ,[CIDADE]
           ,[ESTADO]
           ,[CEP]
           ,[DATA DE NASCIMENTO]
           ,[IDADE]
           ,[SEXO]
           ,[LIMITE DE CRÉDITO]
           ,[VOLUME DE COMPRA]
           ,[PRIMEIRA COMPRA])
     VALUES
           ('9999999999',
           'Matheus Jesus',
           'R. Nova 23',
           'Jardins',
           'São Paulo',
           'SP',
           '80012212',
           '01/07/1993',
           24,
           'M',
           12000,
           30000,
           0)
GO
