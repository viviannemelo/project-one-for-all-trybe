SELECT
COUNT(historicos.usuario_id) AS musicas_no_historico
FROM SpotifyClone.historicos
INNER JOIN SpotifyClone.usuarios
ON historicos.usuario_id = usuarios.usuario_id
WHERE usuarios.nome_usuario = 'Barbara Liskov'
GROUP BY historicos.usuario_id;