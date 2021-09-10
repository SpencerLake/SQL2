--1

SELECT * FROM invoice i
JOIN invoice_line il ON  i.invoice_id = il.invoice_id
WHERE unit_price > 0.99;

--2

SELECT i.invoice_date, c.first_name AS first_name, c.last_name AS last_name
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

--3

SELECT c.first_name as customer_first_name, c.last_name as customer_last_name, e.first_name as employee_first_name, e.last_name as employee_last_name
FROM customer c
JOIN employee e
ON c.support_rep_id = c.customer_id;

--5

SELECT al.title as album_title, ar.name as artist_name
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;

--6

SELECT pltr.track_id
FROM playlist_track pltr
JOIN playlist p 
ON pltr.playlist_id = p.playlist_id
WHERE p.name = 'Music';

--7

SELECT tr.name as track_name
FROM track tr
JOIN playlist_track pl
ON tr.track_id = pl.track_id;

--8

SELECT tr.name, pl.name
FROM track tr
JOIN playlist_track pt
ON tr.track_id = pt.track_id
JOIN playlist pl
ON pl.playlist_id = pt.playlist_id;

--9

SELECT tr.name, al.title
FROM track tr
JOIN album al
ON tr.track_id = al.track_id
JOIN genre g
ON g.genre_id = tr.genre_id
WHERE g.name = 'Alternative & Punk';