SELECT 
  nome_usuario AS pessoa_usuaria,
  COUNT(historicos.cancao_id) AS musicas_ouvidas,
  ROUND(SUM(cancoes.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.historicos
ON usuarios.usuario_id = historicos.usuario_id
INNER JOIN SpotifyClone.cancoes
ON cancoes.cancao_id = historicos.cancao_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;