SELECT
FORMAT(MIN(planos.valor_plano), 2) AS faturamento_minimo, 
FORMAT(MAX(planos.valor_plano), 2) AS faturamento_maximo, 
FORMAT(AVG(planos.valor_plano), 2) AS faturamento_medio, 
FORMAT(SUM(planos.valor_plano), 2) AS faturamento_total 
FROM SpotifyClone.planos
INNER JOIN SpotifyClone.usuarios
ON planos.plano_id = usuarios.plano_id;