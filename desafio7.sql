-- SELECT
-- 	artist.`name` AS 'artista',
--     album.`name` AS 'album',
--     COUNT(artist.id) AS 'seguidores'
-- FROM SpotifyClone.artist
-- INNER JOIN SpotifyClone.album ON album.artist_id = artist.id
-- INNER JOIN SpotifyClone.follow_list ON follow_list.artist_id = artist.id;

-- SELECT COUNT(*) FROM SpotifyClone.follow_list
-- WHERE artist_id = 8;