SELECT
	ar.`name` AS 'artista',
    al.`name` AS 'album',
    COUNT(fl.artist_id) AS 'seguidores'
FROM SpotifyClone.artist AS ar
INNER JOIN SpotifyClone.album AS al ON al.artist_id = ar.id
INNER JOIN SpotifyClone.follow_list AS fl ON fl.artist_id = ar.id
GROUP BY al.id
ORDER BY seguidores DESC, artista ASC, album ASC;