CREATE TABLE IF NOT EXISTS Musical_genre (
	genre_id        SERIAL         PRIMARY KEY ,
	genre_name      VARCHAR(30)    NOT NULL	
);

CREATE TABLE IF NOT	EXISTS Artist_list (
	artist_id       SERIAL         PRIMARY KEY,
	artist_name     VARCHAR (60)   NOT NULL	
);

CREATE TABLE IF NOT EXISTS Music_album (
	album_id        SERIAL         PRIMARY KEY,
	album_name      VARCHAR (250),
	album_release   DATE           NOT NULL 
);

CREATE TABLE IF NOT EXISTS Track_list (
	track_id        SERIAL        PRIMARY KEY,
	track_name      VARCHAR (60)  NOT NULL,
	track_duration  TIME          NOT NULL,
	album_name_id   INTEGER,
	                              FOREIGN KEY (album_name_id) 
	                              REFERENCES   Music_album(album_id)	
);

CREATE TABLE IF NOT EXISTS Collection_list (
	collection_id   SERIAL        PRIMARY KEY,
	collection_name VARCHAR(250)  NOT NULL,
	collection_rel  DATE          NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreArtist (
	genre           INTEGER       REFERENCES  Musical_genre(genre_id),
	artist          INTEGER       REFERENCES  Artist_list(artist_id),
								  CONSTRAINT  pk 
								  PRIMARY KEY (genre, artist)
);

CREATE TABLE IF NOT EXISTS ArtistAlbum (
	artist		INTEGER 	  REFERENCES  Artist_list(artist_id),
	album       INTEGER		  REFERENCES  Music_album(album_id),
	 							  CONSTRAINT  pk_1 
								  PRIMARY KEY (artist, album)
);

CREATE TABLE IF NOT EXISTS collectionTrack (
	track           INTEGER       REFERENCES  Track_list(track_id),
	collection      INTEGER       REFERENCES  Collection_list(collection_id),
							      CONSTRAINT  pk_2 
								  PRIMARY KEY (track, collection)
);