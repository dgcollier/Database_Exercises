USE codeup_test_db;

SELECT name AS 'Albums released after 1991' FROM albums WHERE release_date > 1991;
SELECT name AS 'Albums with genre "disco"' FROM albums WHERE genre = 'Disco';
SELECT name AS 'Albums by Whitney Houston' FROM albums WHERE artist = 'Whitney Houston';


DELETE FROM albums WHERE release_date > 1991s; 
DELETE FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE artist = 'Whitney Houston';