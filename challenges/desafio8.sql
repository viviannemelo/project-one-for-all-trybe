SELECT
artistas.nome_artista AS artista,
albuns.nome_album AS album
FROM SpotifyClone.artistas
INNER JOIN SpotifyClone.albuns
ON artistas.artista_id = albuns.artista_id
WHERE artistas.nome_artista = 'Elis Regina'
GROUP BY artista, album
ORDER BY album;