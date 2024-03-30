INSERT INTO artist_list (artist_name)
VALUES ('Кино'),
	   ('Dabro'),
	   ('Баста'),
	   ('Король и Шут');
	   
INSERT INTO musical_genre (genre_name)
VALUES ('Рок'),
	   ('Поп'),
	   ('Рэп');

INSERT INTO music_album (album_name, album_release)
VALUES ('45', '5.01.1988'),
	   ('Юность', '6.11.2006'),
	   ('Баста 3', '16.11.2019'),
	   ('Будь как дома', '18.12.1997');
	   
INSERT INTO genreartist (genre, artist)
VALUES ('1', '1'),
	   ('1', '4'),
	   ('2', '2'),
	   ('3', '3');
	   
INSERT INTO artistalbum (artist,album)
VALUES ('1','1'),
	   ('2','2'),
	   ('3','3'),
	   ('4','4');

INSERT INTO track_list (track_name, track_duration, album_name_id)
VALUES ('Мои друзья', '00:04:27', '1'),
	   ('Алюминиевые огурцы', '00:02:57', '1'),
	   ('Лесник', '00:03:08', '4'),
	   ('Моя игра', '00:04:31', '3'),
	   ('Осень', '00:03:35', '3'),
	   ('Юность', '00:03:40', '2');
	  
INSERT INTO collection_list (collection_name, collection_rel)
VALUES ('Лучшие песни', '22.08.2020'),
	   ('хиты 90', '10.10.2012'),
	   ('хиты 80', '01.11.208'),
	   ('Страшные сказки', '20.08.2007');
	  
INSERT INTO collectiontrack (track, collection)
VALUES ('3', '4'),
	   ('6', '1');