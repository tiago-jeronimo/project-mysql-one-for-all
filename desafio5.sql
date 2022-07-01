SELECT
	musica.nome AS cancao,
	COUNT(historico.id_musica) AS reproducoes
    
FROM SpotifyClone.musica
	JOIN historico ON musica.id_musica = historico.id_musica
    GROUP BY cancao
    ORDER BY reproducoes DESC ,
    cancao LIMIT 2;