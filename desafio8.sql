SELECT 
	artista.nome AS artista,
	album.nome_album AS album
    
	FROM SpotifyClone.artista AS artista
    
	INNER JOIN SpotifyClone.album AS album
	ON artista.id_artista = album.id_artista
    
    WHERE artista.nome = 'Walter Phoenix'
	GROUP BY artista, album
    ORDER BY album ASC;