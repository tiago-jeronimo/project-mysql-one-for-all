SELECT
        artista.nome As artista,
        album.nome_album AS album,
        COUNT(seguindo.id_usuario) AS seguidores

    FROM SpotifyClone.artista AS artista

    INNER JOIN SpotifyClone.album AS album
    ON artista.id_artista = album.id_artista

    INNER JOIN SpotifyClone.seguindo AS seguindo
    ON artista.id_artista= seguindo.id_artista

    GROUP BY artista, album

    ORDER BY 
		seguidores DESC,
		artista ASC,
        album ASC;