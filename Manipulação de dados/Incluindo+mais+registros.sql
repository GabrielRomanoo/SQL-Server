USE [VENDAS SUCOS]
GO

INSERT INTO [dbo].[PRODUTOS]
           ([CÓDIGO]
           ,[DESCRITOR]
           ,[SABOR]
           ,[TAMANHO]
           ,[EMBALAGEM]
           ,[PREÇO LISTA])
     VALUES
           ('838820',
           ' Clean - 1,5 Litros - Açai',
           'Açai',
           '1,5 Litros',
           'PET',
          13),
			('838821',
           ' Clean - 1,5 Litros - Jaca',
           'Jaca',
           '1,5 Litros',
           'PET',
          13.5),
		  	('1040120',
           ' Light 350 ml - Tangerina',
           'Tangerina',
           '350 ml',
           'Lata',
          5.50)
GO


