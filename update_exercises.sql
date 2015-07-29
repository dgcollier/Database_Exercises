USE codeup_test_db;

SELECT name AS 'All albums in list' FROM albums;

UPDATE albums SET sales_millions = (sales_millions * 10);

SELECT name, sales_millions AS 'Updated album sales' FROM albums;


SELECT name AS 'Albums pre-1980' FROM albums WHERE release_date < 1980;

UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;

SELECT name, release_date AS 'Albums pre-1900' FROM albums WHERE release_date < 1980;


SELECT name AS 'MJ albums' FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

SELECT name, artist FROM albums WHERE artist = 'Peter Jackson';