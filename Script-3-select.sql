--Название и продолжительность самого длительного трека.
SELECT name, time FROM track
WHERE time >= (SELECT MAX(time) FROM track);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT DISTINCT name  FROM track
WHERE time >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM collection
WHERE year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT name FROM artist
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT name FROM track
WHERE name LIKE '%My%';

--Количество исполнителей в каждом жанре.
SELECT genre_id, COUNT(*) FROM artist_genres 
GROUP BY genre_id
ORDER BY COUNT(*) DESC;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT collection_id, COUNT(*) FROM track_collection
WHERE collection_id = (SELECT id FROM collection WHERE year BETWEEN 2019 AND 2020)
GROUP BY collection_id
ORDER BY COUNT(*) DESC;

--Средняя продолжительность треков по каждому альбому.
SELECT album_id, AVG(time) FROM track
GROUP BY album_id;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT name FROM artist AS a
WHERE a.id NOT IN (
    SELECT aa.artist_id 
    FROM artist_album AS aa
    JOIN album al ON aa.album_id = al.id
    WHERE al.year = '2020'
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT name FROM collection AS cl
WHERE cl.id IN (
    SELECT tc.collection_id
    FROM track_collection AS tc
    WHERE tc.track_id IN (
        SELECT tr.id
        FROM track AS tr
        WHERE tr.album_id IN (
            SELECT al.id
            FROM album AS al
            WHERE al.id IN (
                SELECT aa.album_id
                FROM artist_album AS aa
                WHERE aa.artist_id IN (
                    SELECT ar.id
                    FROM artist AS ar
                    WHERE ar.name = 'Lady Gaga'
                    )
                )
            )
        )
    )
);
--или с JOIN
SELECT DISTINCT cl.name
FROM collection AS cl
JOIN track_collection AS tc ON cl.id = tc.collection_id
JOIN track AS tr ON tc.track_id = tr.id
JOIN album AS al ON tr.album_id = al.id
JOIN artist_album AS aa ON al.id = aa.album_id
JOIN artist AS ar ON aa.artist_id = ar.id
WHERE ar.name = 'Bruno Mars';