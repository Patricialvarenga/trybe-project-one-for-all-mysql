USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(
    IN nome VARCHAR(20))
BEGIN
        SELECT a.nome AS artista, ab.nome AS album
        FROM artistas a
        INNER JOIN albuns ab ON ab.artista_id = a.artista_id
        WHERE a.nome = nome
        ORDER BY album;
END $$
DELIMITER ;
