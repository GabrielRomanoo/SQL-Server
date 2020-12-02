CREATE PROCEDURE dbo.buscar_automatizacao (
  @nm_gas VARCHAR(50) = NULL,
  @nm_modulo VARCHAR(50) = NULL
)

AS

SELECT TOP 1
    a.qt_minima_gas,
    a.ic_alarme,
    a.ic_ventilacao,
    a.qt_velocidade_ventilacao,
    a.ic_notificacao,
    a.ic_notificacao_visualizador,
    a.ic_notificacao_tecnico,
    a.ic_notificacao_master,
    a.ic_notificao_root
FROM dbo.TB_Automatizacao AS a
    INNER JOIN dbo.TB_Gas AS gas
    ON gas.nm_gas = @nm_gas
    INNER JOIN dbo.TB_Modulo AS m
    ON m.nm_modulo = @nm_modulo
GO

exec dbo.buscar_automatizacao @nm_gas = 'Carbonico', @nm_modulo = 'Módulo 1'