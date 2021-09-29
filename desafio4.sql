CREATE VIEW SpotifyClone.top_3_artistas AS
    SELECT 
        a.nome AS 'artista', COUNT(us.usuario_id) AS 'seguidores'
    FROM
        SpotifyClone.usuario_artistas us
            INNER JOIN
        SpotifyClone.artistas a ON a.artista_id = us.artista_id
            INNER JOIN
        SpotifyClone.usuarios u ON u.usuario_id = us.usuario_id
    GROUP BY artista
    ORDER BY seguidores DESC , artista
    LIMIT 3;
