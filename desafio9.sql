SELECT 
    COUNT(musica.id_musica) AS quantidade_musicas_no_historico

    FROM SpotifyClone.historico AS historico
    INNER JOIN SpotifyClone.musica AS musica
    ON historico.id_musica = musica.id_musica
    INNER JOIN SpotifyClone.usuario AS usuario
    ON usuario.id_usuario = historico.id_usuario
    WHERE usuario.nome = 'Bill';