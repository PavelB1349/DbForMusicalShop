USE musicStore;
GO
--�������� ������� ������ �������� ����, �� ���� ��������
--�������-������, ������� ���� ����� �������� � �������
--����;

--SELECT TOP 3 album_name, count_copies_sold, YEAR(receipt_date) AS year FROM STORE
--INNER JOIN albums
--ON STORE.album_id = albums.album_id
--WHERE YEAR(receipt_date) = 2022
--ORDER BY count_copies_sold DESC

-- �������� ������ �� �������, �.�. ������ ����� ������; 
--UPDATE albums
--SET about_album = 'New album info' 
--WHERE album_id = 4

--SELECT * FROM albums
--LEFT JOIN tracks
--ON tracks.album_id = albums.album_id

--SELECT track_id, track_name, album_name FROM albums
--RIGHT JOIN tracks
--ON albums.album_id = tracks.album_id


-- ���������� ����������� ������������ ��������� ��������
--CREATE PROCEDURE countTracksFromMusicGroup @group_id INT
--AS
--BEGIN
--SELECT count(track_id) AS count, groupName FROM tracks
--	 JOIN albums
--	ON albums.album_id = tracks.album_id
--	 JOIN musicGroups
--	ON musicGroups.album_id = albums.album_id
--	WHERE group_id = @group_id
--	GROUP BY groupName
--END
--GO

--EXEC countTracksFromMusicGroup 2;

--���������� ����������� ������������ ��������� �����������;

--CREATE PROCEDURE countTracksFromArtist @artist_id INT
--AS
--BEGIN
--SELECT count(track_id) AS countTracks, lname AS artist FROM tracks
--	 JOIN albums
--	ON albums.album_id = tracks.album_id
--	 JOIN artists
--	ON artists.album_id = albums.album_id
--	WHERE artist_id = @artist_id
--	GROUP BY lname
--END
--GO

--EXEC countTracksFromArtist 2;


--������� ������������� ������������ ��������� ������

--CREATE VIEW selectGenreInGroups
--AS
--SELECT track_name, genre, album_name, groupName FROM tracks
--JOIN albums 
--ON albums.album_id = tracks.album_id
--JOIN musicGroups
--ON musicGroups.album_id = albums.album_id
--WHERE genre = 'grunge'

--SELECT * FROM selectGenreInGroups