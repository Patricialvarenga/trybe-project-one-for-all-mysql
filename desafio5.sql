CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
    SELECT 
        c.nome AS 'cancao', COUNT(uc.cancao_id) AS 'reproducoes'
    FROM
        SpotifyClone.cancoes c
            INNER JOIN
        SpotifyClone.usuario_cancoes uc ON c.cancao_id = uc.cancao_id
    GROUP BY cancao
    ORDER BY reproducoes DESC , cancao
    LIMIT 2;
