SELECT
  u.`name` AS 'usuario',
  COUNT(ph.music_id) AS 'qtde_musicas_ouvidas',
  ROUND(SUM(duration_seconds / 60 ), 2) AS 'total_minutos'
FROM
  SpotifyClone.user AS u
INNER JOIN SpotifyClone.playback_history as ph
	ON ph.user_id = u.id
INNER JOIN SpotifyClone.music AS m
	ON ph.music_id = m.id
GROUP BY u.name;