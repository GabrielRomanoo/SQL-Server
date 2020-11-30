ALTER TABLE [TABELA DE PRODUTOS] 
ALTER COLUMN [CODIGO DO PRODUTO] VARCHAR(10) NOT NULL -- alteramos o campo CODIGO DO PRODUTO da tabela para que ele n�o aceite nulos

ALTER TABLE [dbo].[TABELA DE PRODUTOS]  -- comando ALTER para alterar a estrutura da tabela
ADD CONSTRAINT PK_PRODUTOS -- comando CONSTRAINT indica ao SQL uma chave prim�ria ou estrangeira
PRIMARY KEY CLUSTERED ([CODIGO DO PRODUTO])-- indica ao SQL que de CONSTRAINT queremos adicionar.

ALTER TABLE [dbo].[TABELA DE VENDEDORES]
ALTER COLUMN [MATRICULA] VARCHAR(5) NOT NULL

ALTER TABLE [dbo].[TABELA DE VENDEDORES]
ADD CONSTRAINT PK_VENDEDORES
PRIMARY KEY CLUSTERED ([MATRICULA])

