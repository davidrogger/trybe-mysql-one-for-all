SELECT
	u.name AS 'usuario',
    IF(MAX(YEAR(ph.playback_datetime)) = 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.playback_history AS ph
	ON ph.user_id = u.id
GROUP BY usuario;
