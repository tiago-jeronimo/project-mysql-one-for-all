SELECT 
	usuario.nome AS usuario,
	COUNT(historico.id_musica) AS qtde_musicas_ouvidas,
	ROUND(SUM(musica.duracao)/ 60,2) AS total_minutos

	FROM SpotifyClone.usuario
	JOIN historico ON usuario.id_usuario = historico.id_usuario
	JOIN musica ON historico.id_musica = musica.id_musica
	GROUP BY usuario.nome
    ORDER BY usuario.nome;