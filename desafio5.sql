SELECT
	m.`name` AS 'cancao',
    COUNT(ph.music_id) AS 'reproducoes'
FROM
	SpotifyClone.music AS m
INNER JOIN
	SpotifyClone.playback_history AS ph ON m.id = ph.music_id
GROUP BY
	m.`name`
ORDER BY
	reproducoes DESC, cancao ASC
LIMIT
	2;