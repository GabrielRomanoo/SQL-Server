CREATE PROCEDURE dbo.relatorio_mes (
  @data VARCHAR(50),
  @nm_modulo VARCHAR(50)
)

AS
SELECT
    DAY(r_g.dt_registro) as dt_gas,
    r_g.qt_gas,
    gas.nm_gas,
    r_g.ic_verificacao as ventilacao
FROM dbo.TB_Relatorio_Gases AS r_g
    INNER JOIN dbo.TB_Modulo AS m
    ON m.id_modulo = r_g.id_modulo
    INNER JOIN dbo.TB_Gas AS gas
    ON gas.id_gas = r_g.id_gas
WHERE MONTH(r_g.dt_registro) = @data
    AND m.nm_modulo = @nm_modulo
GROUP BY DAY(r_g.dt_registro),
    r_g.qt_gas,
    gas.nm_gas,
    r_g.ic_verificacao
GO

exec dbo.relatorio_mes @data = '10', @nm_modulo = 'Módulo 1'

DROP PROCEDURE dbo.relatorio_mes