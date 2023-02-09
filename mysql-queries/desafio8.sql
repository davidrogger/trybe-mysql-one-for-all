SELECT
	artist.`name` AS 'artista',
    album.`name` AS 'album'
FROM
	SpotifyClone.artist
INNER JOIN SpotifyClone.album ON album.artist_id = artist.id
HAVING artista = 'Walter Phoenix'
ORDER BY album;