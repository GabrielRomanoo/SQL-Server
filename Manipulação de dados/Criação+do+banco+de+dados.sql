
CREATE DATABASE [VENDAS SUCOS]

CREATE DATABASE [VENDAS SUCOS 2]
ON (NAME = VENDAS_SUCOS_2_DAT, --nome do arquivo do banco de dados
FILENAME = 'C:\TEMP\DATA\VENDAS_SUCOS_02.MDF', --localização do arquivo
SIZE = 10, -- tamanho inicial do banco de dados
MAXSIZE = 50, -- tamanho máximo
FILEGROWTH = 5) --quando atinge 10.1, cresce 5. quando antige 15.1, crsce 5. assim em diante
LOG ON (NAME = VENDAS_SUCOS_2_LOG,
FILENAME = 'C:\TEMP\DATA\VENDAS_SUCOS_02.LDF',
SIZE = 10,
MAXSIZE = 50,
FILEGROWTH = 5)

DROP DATABASE [VENDAS SUCOS 2]

