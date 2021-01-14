

CREATE TABLE TAB_IDENTITY 
( ID INT IDENTITY (1,1) NOT NULL,
DESCRITOR VARCHAR(20) NULL)

INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE X')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE Y')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE Z')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE W')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE A')

SELECT * FROM TAB_IDENTITY

DELETE FROM TAB_IDENTITY WHERE ID = 1

DROP TABLE TAB_IDENTITY

CREATE TABLE TAB_IDENTITY 
( ID INT IDENTITY (100,5) NOT NULL,
DESCRITOR VARCHAR(20) NULL)


-- para informar que um campo é identity de uma tabela já existente no banco:

/*
Vá ao menu do Microsoft SQL Server Management Studio: ferramentas -> opções ...
Desmarque a opção Evitar salvar alterações que exijam recriação de tabela localizada no item Designers;
Vá na tabela que deseja alterar para IDENTITY`, clique com o botão direito do mouse e aparecerá a opção Designer.
Altere para Sim na opção (Is Identity) em Identity Specification.
*/
