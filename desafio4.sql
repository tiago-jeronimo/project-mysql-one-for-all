SELECT
	usuario.nome AS usuario,
	IF(MAX(YEAR(historico.data)) = 2021, 'Usuário ativo','Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuario
	JOIN historico ON usuario.id_usuario = historico.id_usuario
    GROUP BY usuario
    ORDER BY usuario;