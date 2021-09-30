CREATE VIEW SpotifyClone.faturamento_atual AS
    SELECT 
        ROUND(MIN(valor), 2) AS 'faturamento_minimo',
        ROUND(MAX(valor), 2) AS 'faturamento_maximo',
        ROUND(SUM(valor) / 4, 2) AS 'faturamento_medio',
        ROUND(SUM(valor), 2) AS 'faturamento_total'
    FROM
        SpotifyClone.planos;
