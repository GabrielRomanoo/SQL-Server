USE DBGas

BEGIN TRANSACTION [Empresa_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Empresa VALUES
		('Gas Monitor', 4)
		COMMIT TRANSACTION [Empresa_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Empresa_Transacao]
  END CATCH

BEGIN TRANSACTION [Nivel_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Nivel VALUES
		('Visualizador'),
		('Técnico'),
		('Master'),
		('Root')
		COMMIT TRANSACTION [Nivel_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Nivel_Transacao]
  END CATCH

BEGIN TRANSACTION [Funcionario_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Funcionario VALUES
		(1, 1, 'jaimemathias@hotmail.com', '12345', 'Jaime Mathias'),
		(1, 2, 'felipe.ferreira@hotmail.com', '321321', 'Felipe Ferreira'),
		(1, 3, 'gabriel@hotmail.com', '3222', 'Gabriel'),
		(1, 4, 'Willy@hotmail.com', '3222', 'Willy')
		COMMIT TRANSACTION [Funcionario_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Funcionario_Transacao]
  END CATCH

BEGIN TRANSACTION [Acao_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Acao VALUES
		('Imprimir relatório', 2),
		('Visualizar gás', 1),
		('Adicionar funcionário', 4),
		('Mudar cargo', 3),
		('Adicionar funcionalidade extra', 3)
		COMMIT TRANSACTION [Acao_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Acao_Transacao]
  END CATCH

BEGIN TRANSACTION [Alarme_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Alarme VALUES 
		(0),
		(0),
		(0),
		(0)
		COMMIT TRANSACTION [Alarme_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Alarme_Transacao]
  END CATCH

BEGIN TRANSACTION [Ventilacao_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Ventilacao VALUES 
		(0),
		(0),
		(0),
		(0)
		COMMIT TRANSACTION [Ventilacao_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Ventilacao_Transacao]
  END CATCH

BEGIN TRANSACTION [Modulo_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Modulo VALUES 
		(1, 'Módulo 1', 1, 1, 1),
		(1, 'Módulo 2', 2, 2, 2),
		(1, 'Módulo 3', 3, 3, 3),
		(1, 'Módulo 4', 4, 4, 4)
		COMMIT TRANSACTION [Modulo_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Modulo_Transacao]
  END CATCH

BEGIN TRANSACTION [Relatorio_Acoes_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Relatorio_Acoes VALUES
		(4, 1, 1, '22-10-20'),
		(1, 2, 2, '22-10-20'),
		(2, 2, 3, '22-10-20')
		COMMIT TRANSACTION [Relatorio_Acoes_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Relatorio_Acoes_Transacao]
  END CATCH

BEGIN TRANSACTION [Gas_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Gas VALUES
		('Carbonico', 1),
		('Enxofre', 2),
		('Nitrôgenio', 1)
		COMMIT TRANSACTION [Gas_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Gas_Transacao]
  END CATCH

BEGIN TRANSACTION [Gases_Bloqueados_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Gases_Bloqueados VALUES
		(1, 1),
		(2, 2),
		(1, 3)
		COMMIT TRANSACTION [Gases_Bloqueados_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Gases_Bloqueados_Transacao]
  END CATCH

BEGIN TRANSACTION [Automatizacao_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Automatizacao VALUES
		(1, 1, 1, 0, 1, 1, 0, 1, 7200, 1, 12.00),
		(2, 2, 1, 0, 1, 1, 0, 1, 7200, 1, 10.50),
		(2, 3, 1, 0, 1, 1, 0, 1, 7200, 1, 5.00)
		COMMIT TRANSACTION [Automatizacao_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Automatizacao_Transacao]
  END CATCH

BEGIN TRANSACTION [Funcionalidade_Extra_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Funcionalidade_Extra VALUES
		(1, 2, '31-10-20')
		COMMIT TRANSACTION [Funcionalidade_Extra_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Funcionalidade_Extra_Transacao]
  END CATCH

BEGIN TRANSACTION [Relatorio_Gases_Transacao]
	BEGIN TRY
		INSERT INTO dbo.TB_Relatorio_Gases VALUES
		(1, 1, 100, 0, '22-10-20')
		COMMIT TRANSACTION [Relatorio_Gases_Transacao]
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION [Relatorio_Gases_Transacao]
  END CATCH