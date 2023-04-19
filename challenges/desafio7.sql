SELECT
artistas.nome_artista AS artista,
albuns.nome_album AS album,
COUNT(seguidores.artista_id) AS pessoas_seguidoras
FROM SpotifyClone.artistas
INNER JOIN SpotifyClone.albuns
ON artistas.artista_id = albuns.artista_id
INNER JOIN SpotifyClone.seguidores
ON artistas.artista_id = seguidores.artista_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;