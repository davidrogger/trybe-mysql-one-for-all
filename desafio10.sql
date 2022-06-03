SELECT
	music.name AS 'nome',
    COUNT(playback_history.music_id) AS 'reproducoes'
FROM
	SpotifyClone.music
INNER JOIN SpotifyClone.playback_history ON music.id = playback_history.music_id
INNER JOIN SpotifyClone.`user` ON `user`.id = playback_history.user_id
WHERE user.plan_id = 1 OR plan_id = 3
GROUP BY nome
ORDER BY nome;