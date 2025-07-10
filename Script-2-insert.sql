SET search_path TO music;

INSERT INTO genre(name) 
VALUES
    ('Джаз'),
    ('Рок'),
    ('Поп'),
    ('Рэп');

INSERT INTO artist(name) 
VALUES
    ('Louis Armstrong'),
    ('Avril Lavigne'),
    ('Marilyn Manson'),
    ('Eminem'),
    ('Lady Gaga'),
    ('Bruno Mars');

INSERT INTO artist_genres(genre_id, artist_id) 
VALUES
    (1, 1),
    (2, 2),
    (2, 3),
    (2, 6),
    (2, 4),
    (3, 4),
    (3, 5),
    (3, 6),
    (4, 4);

INSERT INTO album(name, year) 
VALUES
    ('What a wonderful World', 1968),
    ('Love Sux', 2022),
    ('Lest we forget: the best of', 2004),
    ('The Marshall Mathers LP', 2000),
    ('Mayhem', 2025),
    ('Die with a smile', 2024)
    ('My song', 2020)
    ('ABC', 2019);

INSERT INTO artist_album(artist_id, album_id) 
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (3, 4),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 6),
    (6, 5),
    (1, 7),
    (3, 7),
    (2, 8),
    (4, 8),
    (5, 8);

INSERT INTO track(name, time, album_id) 
VALUES
    ('What a wonderful World', 139, 1),
    ('My Love Sux', 168, 2),
    ('The Love Song', 196, 3),
    ('The way I Am', 298, 4),
    ('Die With A Smile', 251, 5),
    ('Die With A Smile', 251, 6),
    ('Abracadabra', 223, 5)
    ('Wonderful Life', 310, 7),
    ('My song', 160, 7),
    ('Lalala', 233, 7),
    ('The princes', 288, 8),
    ('Love song', 254, 8),
    ('Labubu', 249, 8),
    ('Blue sky', 270, 7);

INSERT INTO collection(name, year) 
VALUES
    ('Легенды джаза', 2019),
    ('Жаркое лето 2022', 2022),
    ('The best of', 2004),
    ('Girl party', 2025),
    ('Хиты поп-музыки', 2025);

INSERT INTO track_collection (track_id, collection_id)
VALUES
    (1, 1),
    (2, 2),
    (2, 4),
    (3, 3),
    (4, 3),
    (5, 5),
    (7, 5),
    (7, 4),
    (6, 5),
    (8, 4),
    (8, 5),
    (9, 2),
    (9, 4),
    (10, 1),
    (11, 2),
    (11, 5),
    (11, 4),
    (12, 3),
    (13, 3);


