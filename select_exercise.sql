USE codeup_test_db;

SELECT name AS 'Albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';
-- +---------------------------+
-- | Albums by Pink Floyd      |
-- +---------------------------+
-- | The Dark Side of the Moon |
-- | The Wall                  |
-- +---------------------------+

SELECT release_date AS 'Sgt. Pepper Release' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
-- +---------------------+
-- | Sgt. Pepper Release |
-- +---------------------+
-- |                1967 |
-- +---------------------+

SELECT genre AS 'Genre of Nevermind' FROM albums WHERE  name = 'Nevermind';
-- +--------------------------+
-- | Genre of Nevermind       |
-- +--------------------------+
-- | Grunge, alternative rock |
-- +--------------------------+

SELECT name AS 'Albums Released in 1990s' FROM albums WHERE release_date > 1989;
-- +----------------------------------------+
-- | Albums Released in 1990s               |
-- +----------------------------------------+
-- | The Bodyguard                          |
-- | Come On Over                           |
-- | Jagged Little Pill                     |
-- | Falling into You                       |
-- | Music Box                              |
-- | Let''s Talk About Love                 |
-- | 1                                      |
-- | 21                                     |
-- | Titanic: Music from the Motion Picture |
-- | The Immaculate Collection              |
-- | Metallica                              |
-- | Dangerous                              |
-- | Nevermind                              |
-- | Supernatural                           |
-- +----------------------------------------+

SELECT name AS 'Albums with More than 20 Million Sales' FROM albums WHERE sales_millions > 19.9;
-- +----------------------------------------+
-- | Albums with More than 20 Million Sales |
-- +----------------------------------------+
-- | Thriller                               |
-- | The Dark Side of the Moon              |
-- | The Bodyguard                          |
-- | Bat Out of Hell                        |
-- | Their Greatest Hits (1971–1975)        |
-- | Back in Black                          |
-- | Rumours                                |
-- | Come On Over                           |
-- | Led Zeppelin IV                        |
-- | Jagged Little Pill                     |
-- | Falling into You                       |
-- | Hotel California                       |
-- | 1                                      |
-- | 21                                     |
-- | Supernatural                           |
-- | Appetite for Destruction               |
-- +----------------------------------------+

SELECT name AS 'Rock Albums' FROM albums WHERE genre = 'Rock';
-- +---------------------------------------+
-- | Rock Albums                           |
-- +---------------------------------------+
-- | Sgt. Pepper''s Lonely Hearts Club Band|
-- | 1                                     |
-- | Abbey Road                            |
-- | Born in the U.S.A.                    |
-- | Brothers in Arms                      |
-- | Supernatural                          |
-- +---------------------------------------+
-- *NOT* all rock bands in list. 