SELECT 
  cancoes.nome_cancao AS cancao,
  COUNT(historicos.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes
INNER JOIN SpotifyClone.historicos
ON cancoes.cancao_id = historicos.cancao_id
GROUP BY cancao, historicos.cancao_id
ORDER BY reproducoes DESC, cancao LIMIT 2;