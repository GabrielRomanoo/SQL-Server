CREATE DATABASE SUCO_VENDAS_01

CREATE DATABASE SUCO_VENDAS_02 -- ESTE BANCO SER� CRIADO NO DIRET�RIO FILENAME (COM O ARQUIVO QUE REPRESENTA OS DADOS), COM TAMANHO INICIAL DE 10 MEGABYTES, COM TAMANHO MAXIMO DE 50 MEGABYTES, E ELE IRA CRESCER DE 5 EM 5
ON (NAME = SUCO_VENDAS_DAT, FILENAME = 'C:\TEMP\DATA\SALES_VENDAS_02.MDF', SIZE = 10, MAXSIZE = 50, FILEGROWTH = 5)
LOG ON (NAME = SUCO_VENDAS_DAT, FILENAME = 'C:\TEMP\DATA\SALES_VENDAS_02.LDF', SIZE = 10, MAXSIZE = 50, FILEGROWTH = 5) -- EXTENSAO MDF PARA DADOS, E EXTESNAO LDF PARA LOG