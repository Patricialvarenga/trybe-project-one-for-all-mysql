CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
    SELECT 
        u.nome AS 'usuario',
        c.nome AS 'nome'
    FROM
        SpotifyClone.usuarios AS u
            INNER JOIN
        SpotifyClone.usuario_cancoes AS uc ON u.usuario_id = uc.usuario_id
            INNER JOIN
        SpotifyClone.cancoes AS c ON uc.cancao_id = c.cancao_id
    ORDER BY u.nome , c.nome;
