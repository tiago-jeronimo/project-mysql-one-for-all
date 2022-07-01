SELECT 
	MIN(planos.valor) AS faturamento_minimo,
	MAX(planos.valor) AS faturamento_maximo,
	ROUND(AVG(planos.valor), 2) AS faturamento_medio,
	ROUND(SUM(planos.valor), 2) AS faturamento_total

FROM SpotifyClone.planos AS planos
INNER JOIN SpotifyClone.usuario AS usuario
ON usuario.id_plano = planos.id_plano;