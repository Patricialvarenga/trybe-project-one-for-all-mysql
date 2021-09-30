CREATE VIEW SpotifyClone.perfil_artistas AS
    SELECT 
        a.nome AS 'artista',
        ab.nome AS 'album',
        COUNT(us.artista_id) AS 'seguidores'
    FROM
        SpotifyClone.artistas a
            INNER JOIN
        SpotifyClone.albuns ab ON a.artista_id = ab.artista_id
            INNER JOIN
        SpotifyClone.usuario_artistas us ON us.artista_id = a.artista_id
    GROUP BY artista , album
    ORDER BY seguidores DESC , artista , album;
