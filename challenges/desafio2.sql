SELECT 
  COUNT(cancoes.cancao_id) AS cancoes,
  COUNT( DISTINCT artistas.artista_id) AS artistas,
  COUNT( DISTINCT albuns.albuns_id) AS albuns
FROM SpotifyClone.cancoes
INNER JOIN SpotifyClone.albuns
ON cancoes.albuns_id = albuns.albuns_id
INNER JOIN SpotifyClone.artistas
ON albuns.artista_id = artistas.artista_id;