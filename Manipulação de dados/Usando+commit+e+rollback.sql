
SELECT * FROM [VENDEDORES]

-- 1 passo
BEGIN TRANSACTION -- congela o estado

-- 2 passo
/* executa as alterações abaixo */ 
UPDATE [VENDEDORES] SET [COMISSÃO] = [COMISSÃO] * 1.15

INSERT INTO [VENDEDORES] ([MATRÍCULA], [NOME], [BAIRRO],[COMISSÃO], [DATA ADMISSÃO], [FÉRIAS])
VALUES ('99999','João da Silva','Icaraí',0.08,'2014-09-01',0)

-- 3 passo
ROLLBACK -- volta pro estado original
 -- ou
COMMIT -- confirma o estado

-- para cada begin transaction, temos apenas 1 rollback ou 1 commit

