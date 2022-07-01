SELECT
	musica.nome AS nome,
	COUNT(*) AS reproducoes

	FROM SpotifyClone.musica As musica
    
	INNER JOIN SpotifyClone.historico AS historico
	ON musica.id_musica = historico.id_musica

	INNER JOIN SpotifyClone.usuario AS usuario
	ON usuario.id_usuario = historico.id_usuario

	INNER JOIN SpotifyClone.planos AS planos
	ON planos.id_plano = usuario.id_plano

	WHERE planos.nome IN ('Gratuito', 'Pessoal')
	GROUP BY nome
	ORDER BY nome ASC;