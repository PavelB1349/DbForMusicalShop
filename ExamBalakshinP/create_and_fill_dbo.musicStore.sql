--USE master;
--GO

--CREATE DATABASE musicStore;
--GO

USE musicStore;
GO


--CREATE TABLE albums
--(
-- album_id INT PRIMARY KEY IDENTITY,
-- album_name NVARCHAR(100),
-- genre NVARCHAR(20),
-- release_date DATETIME,
-- count_track INT,
-- about_album NVARCHAR(500) 
--)

--CREATE TABLE artists
--(
-- artist_id INT PRIMARY KEY IDENTITY,
-- lname NVARCHAR(20),
-- fname NVARCHAR(20),
-- patronymic NVARCHAR(20),
-- birthDate DATETIME,
-- beginning_of_creativity DATETIME,
-- end_of_career DATETIME,
-- musical_genre NVARCHAR(50),
-- count_of_albums INT,
-- country NVARCHAR(20),
-- album_id INT FOREIGN KEY REFERENCES albums(album_id)
--)

--CREATE TABLE musicGroups
--(
-- group_id INT PRIMARY KEY IDENTITY,
-- groupName NVARCHAR(30),
-- musical_genre NVARCHAR(20),
-- country NVARCHAR(20),
-- founding_date DATETIME,
-- end_of_existence DATETIME,
-- count_of_albums INT,
-- album_id INT FOREIGN KEY REFERENCES albums(album_id)
--)

--CREATE TABLE tracks
--(
-- track_id INT IDENTITY,
-- track_name NVARCHAR(80),
-- album_id INT FOREIGN KEY REFERENCES albums(album_id)
--)

--CREATE TABLE STORE
--(
--	sale_id INT PRIMARY KEY IDENTITY,
--	count_copies_sold INT,
--	receipt_date DATETIME,
--	remainder INT,
--	wholesale_price MONEY,
--	retail_price MONEY,
--	album_id INT FOREIGN KEY REFERENCES albums(album_id)
--)


--CREATE PROCEDURE addAlbum @album_name NVARCHAR(100), @genre NVARCHAR(20), @release_date DATETIME, @count_track INT, @about_album NVARCHAR(500)
--AS
--BEGIN
--	INSERT INTO dbo.albums 
--	VALUES ( @album_name, @genre, @release_date, @count_track, @about_album)
--END
--GO


--CREATE PROCEDURE addArtist @lname NVARCHAR(20), @fname NVARCHAR(20), @patronymic NVARCHAR(20), @birthDate DATETIME, @beginning_of_creativity DATETIME,
--	@end_of_career DATETIME, @musical_genre NVARCHAR(50), @count_of_albums INT, @country NVARCHAR(20), @album_id INT
--AS
--BEGIN
--	INSERT INTO dbo.artists
--	VALUES (@lname, @fname, @patronymic, @birthDate, @beginning_of_creativity, @end_of_career, @musical_genre, @count_of_albums, @country, @album_id)
--END
--GO


--CREATE PROCEDURE addMusicGroups @groupName NVARCHAR(30), @musical_genre NVARCHAR(20), @country NVARCHAR(20), @founding_date DATETIME, @end_of_existence DATETIME,
--	@count_of_albums INT, @album_id INT
--AS
--BEGIN
--	INSERT INTO dbo.musicGroups
--	VALUES (@groupName, @musical_genre, @country, @founding_date, @end_of_existence, @count_of_albums, @count_of_albums, @album_id)
--END
--GO


--CREATE PROCEDURE addValueToStore @count_copies_sold INT, @receipt_date DATETIME, @remainder INT, @wholesale_price MONEY, @retail_price MONEY, @album_id INT
--AS
--BEGIN
--	INSERT INTO dbo.STORE
--	VALUES (@count_copies_sold, @receipt_date, @remainder, @wholesale_price, @retail_price, @album_id)
--END
--GO



--INSERT INTO albums
--VALUES ('The Dark Side of the Moon', 'psychedelic rock ', '1973-03-01', 10, N'Самый успешный альбом группы, превративший Pink Floyd в явление мирового масштаба' )

--SELECT * FROM albums;

--INSERT INTO albums
--VALUES ('MTV Unplugged in New York', 'grunge', '1994-11-01', 14, ' It features an acoustic performance recorded at Sony Music Studios in New York City')

--INSERT INTO albums
--VALUES ('Sempiternal', 'metalcore', '2013-04-01', 11, 'Is the fourth studio album by British rock band Bring Me the Horizon.')

--INSERT INTO albums
--VALUES ('Desire', 'psychedelic rock', '1976-01-05', 9, 'The seventeenth studio album by American singer-songwriter Bob Dylan')

--INSERT INTO albums
--VALUES ('Out of Ashes', 'Alternative rock', '2009-10-13', 12, 'The only studio album consisted of Linkin Park lead vocalist Chester Bennington')

--INSERT INTO tracks
--VALUES ('Speak to Me', 1)
--INSERT INTO tracks
--VALUES ('Breathe', 1)
--INSERT INTO tracks
--VALUES ('On the Run', 1)
--INSERT INTO tracks
--VALUES ('Time', 1)
--INSERT INTO tracks
--VALUES ('The Great Gig in the Sky', 1)
--INSERT INTO tracks
--VALUES ('Money', 1)
--INSERT INTO tracks
--VALUES ('Us and Them', 1)
--INSERT INTO tracks
--VALUES ('Any Colour You Like', 1)
--INSERT INTO tracks
--VALUES ('Brain Damage', 1)
--INSERT INTO tracks
--VALUES ('Eclipse', 1)

--INSERT INTO tracks
--VALUES ('About a Girl', 2)
--INSERT INTO tracks
--VALUES ('Come as You Are', 2)
--INSERT INTO tracks
--VALUES ('Jesus Doesnt Want Me for a Sunbeam', 2)
--INSERT INTO tracks
--VALUES ('The Man Who Sold the World', 2)
--INSERT INTO tracks
--VALUES ('Pennyroyal Tea', 2)
--INSERT INTO tracks
--VALUES ('Dumb', 2)
--INSERT INTO tracks
--VALUES ('Polly', 2)
--INSERT INTO tracks
--VALUES ('ON a Plain', 2)
--INSERT INTO tracks
--VALUES ('Something in the Way', 2)
--INSERT INTO tracks
--VALUES ('Plateau', 2)
--INSERT INTO tracks
--VALUES ('Oh Me', 2)
--INSERT INTO tracks
--VALUES ('Lake of Fire', 2)
--INSERT INTO tracks
--VALUES ('All Apologies', 2)
--INSERT INTO tracks
--VALUES ('Where Did You Sleep Last Night', 2)

--INSERT INTO tracks
--VALUES ('Can You Feel My Heart', 3)
--INSERT INTO tracks
--VALUES ('The House of Wolves', 3)
--INSERT INTO tracks
--VALUES ('Empire ', 3)
--INSERT INTO tracks
--VALUES ('Sleepwalking', 3)
--INSERT INTO tracks
--VALUES ('Go to Hell, for Heavens Sake', 3)
--INSERT INTO tracks
--VALUES ('Shadow Moses', 3)
--INSERT INTO tracks
--VALUES ('And the Snakes Start to Sing', 3)
--INSERT INTO tracks
--VALUES ('Seen It All Before', 3)
--INSERT INTO tracks
--VALUES ('Antivist', 3)
--INSERT INTO tracks
--VALUES ('Crooked Young', 3)
--INSERT INTO tracks
--VALUES ('Hospital for Souls', 3)

--INSERT INTO tracks
--VALUES ('Hurricane', 4)
--INSERT INTO tracks
--VALUES ('Isis', 4)
--INSERT INTO tracks
--VALUES ('Mozambique', 4)
--INSERT INTO tracks
--VALUES ('One More Cup of Coffee', 4)
--INSERT INTO tracks
--VALUES ('Oh, Sister', 4)
--INSERT INTO tracks
--VALUES ('Joey', 4)
--INSERT INTO tracks
--VALUES ('Romance in Durango', 4)
--INSERT INTO tracks
--VALUES ('Black Diamond Bay', 4)
--INSERT INTO tracks
--VALUES ('Sara', 4)

--INSERT INTO tracks
--VALUES ('Fire', 5)
--INSERT INTO tracks
--VALUES ('Crawl Back In', 5)
--INSERT INTO tracks
--VALUES ('Too Late', 5)
--INSERT INTO tracks
--VALUES ('Inside of Me', 5)
--INSERT INTO tracks
--VALUES ('Let Down', 5)
--INSERT INTO tracks
--VALUES ('Give Me Your Name', 5)
--INSERT INTO tracks
--VALUES ('My Suffering', 5)
--INSERT INTO tracks
--VALUES ('Condemned', 5)
--INSERT INTO tracks
--VALUES ('Into You', 5)
--INSERT INTO tracks
--VALUES ('End of the World', 5)
--INSERT INTO tracks
--VALUES ('Walking in Circles', 5)
--INSERT INTO tracks
--VALUES ('In the Darkness', 5)

--INSERT INTO artists (lname, fname, birthDate, beginning_of_creativity, musical_genre, count_of_albums, country, album_id)
--VALUES ('Dylan','Bob', '1941-05-24', '1959-01-01', 'folkrock', 39, 'USA', 4)

--INSERT INTO artists
--VALUES ('Bennington', 'Chester', 'Charles', '1976-03-20', '1992-01-01', '2017-06-20', 'alternative rock', 2, 'USA', 5)

--INSERT INTO musicGroups (groupName, musical_genre, country, founding_date, count_of_albums, album_id)
--VALUES ('Pink Floyd', 'progressive rock','England', '1964-01-01', 15, 1)

--INSERT INTO musicGroups
--VALUES ('Nirvana', 'Grunge', 'USA', '1987-02-02','1994-04-8', 3, 2)

--INSERT INTO musicGroups (groupName, musical_genre, country, founding_date, count_of_albums, album_id)
--VALUES ('Bring Me the Horizon', 'Metalcore', 'England', '2004-03-03', 6, 3)

--INSERT INTO STORE
--VALUES (98, '2022-01-03', 150, 1500, 2000, 1)

--INSERT INTO STORE
--VALUES (160, '2021-12-12', 75, 1700, 2200, 2)

--INSERT INTO STORE
--VALUES (190, '2021-05-06', 99, 1600, 2500, 3)

--INSERT INTO STORE
--VALUES (20, '2022-01-23', 13, 1400, 1800, 4)

--INSERT INTO STORE
--VALUES (120, '2021-02-02', 76, 1650, 2100, 5)


SELECT * FROM albums
SELECT * FROM artists
SELECT * FROM musicGroups
SELECT * FROM STORE



