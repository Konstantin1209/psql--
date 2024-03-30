--Задание 2-1:

SELECT track_name, track_duration
FROM track_list
WHERE track_duration = (SELECT MAX(track_duration) FROM track_list);

SELECT track_name
FROM track_list
WHERE track_duration >= '00:03:50';

SELECT collection_name
FROM collection_list 
WHERE EXTRACT(year FROM collection_rel) BETWEEN 2018 AND 2020;

SELECT artist_name 
FROM artist_list
WHERE artist_name NOT LIKE '% %';

SELECT track_name
FROM track_list
WHERE (lower(track_name) LIKE '%мои%') OR (lower(track_name) LIKE '%my%');

--Задание 3:

SELECT count(*), genre_name
FROM musical_genre as g
JOIN genreartist as ga ON g.genre_id = ga.genre
GROUP BY g.genre_name;

SELECT COUNT(*) AS num_tracks
FROM tracks_list
WHERE album_id IN (
  SELECT id
  FROM albums
  WHERE EXTRACT(YEAR FROM release) BETWEEN (2019) AND (2020)
);

SELECT avg(track_duration), album_name
FROM track_list as tl join music_album as ma ON tl.album_name_id = ma.album_id
GROUP BY album_name;

SELECT DISTINCT artist_name
FROM Artist_list as al
LEFT JOIN ArtistAlbum as aa ON al.artist_id = aa.artist
WHERE aa.album IS NULL AND EXTRACT(YEAR FROM aa.album_release) = 2020

SELECT DISTINCT cl.collection_name
FROM Collection_list cl
JOIN collectionTrack ct ON cl.collection_id = ct.collection
JOIN Track_list tl ON ct.track = tl.track_id
JOIN ArtistAlbum aa ON tl.album_name_id = aa.album
JOIN GenreArtist ga ON aa.artist = ga.artist
WHERE ga.genre = '2';
