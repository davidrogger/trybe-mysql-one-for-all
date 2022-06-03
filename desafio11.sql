SELECT
	old_music.`name` AS 'nome_musica',
    new_music.`name` AS 'novo_nome'
FROM SpotifyClone.music AS old_music
INNER JOIN (
	SELECT
		music.id,
		CASE
			WHEN music.`name` LIKE '%Streets' THEN REPLACE(music.`name`, 'Streets', 'Code Review')
			WHEN music.`name` LIKE '%Her Own' THEN REPLACE(music.`name`, 'Her Own', 'Trybe')
			WHEN music.`name` LIKE '%Inner Fire' THEN REPLACE(music.`name`, 'Inner Fire', 'Project')
			WHEN music.`name` LIKE '%Silly' THEN REPLACE(music.`name`, 'Silly', 'Nice')
			WHEN music.`name` LIKE '%Circus' THEN REPLACE(music.`name`, 'Circus', 'Pull Request')
		ELSE
			NULL
		END AS `name`
    FROM SpotifyClone.music
) AS new_music ON old_music.id = new_music.id
WHERE new_music.`name` IS NOT NULL
ORDER BY nome_musica;