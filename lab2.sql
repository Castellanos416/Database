use lab1;
SELECT id, book_code, is_new, book_name, book_cost, pages_num FROM BOOKS;
SELECT * FROM BOOKS;
SELECT book_code, book_name, is_new,pages_num, book_cost, id FROM BOOKS;
SELECT * FROM BOOKS LIMIT 10;
SELECT * FROM BOOKS LIMIT 10 PERCENT;
SELECT DISTINCT book_code FROM BOOKS;
SELECT * FROM BOOKS WHERE is_new;
SELECT * FROM BOOKS WHERE is_new AND book_cost BETWEEN 20 AND 30;
SELECT * FROM BOOKS WHERE book_cost < 20 OR book_cost > 30;
SELECT * FROM BOOKS WHERE (pages_num BETWEEN 300 AND 400) AND (book_cost > 20 AND book_cost < 30);
SELECT * FROM BOOKS WHERE (YEAR(publishing_date)=2000 AND MONTH(publishing_date) IN (1,2,12) );
SELECT * FROM BOOKS WHERE book_code IN (5110, 5141, 4985, 4241);
SELECT * FROM BOOKS WHERE (YEAR(publishing_date) IN (1999, 2001, 2003, 2005));
SELECT * FROM BOOKS WHERE book_name REGEXP '^[A-K]'
SELECT * FROM BOOKS WHERE (book_name LIKE 'Апп%') AND YEAR(publishing_date)=2000 AND book_cost<20;
SELECT * FROM BOOKS WHERE book_name LIKE 'Апп%е' AND YEAR(publishing_date)=2000 AND MONTH(publishing_date)<=6;
SELECT * FROM BOOKS WHERE book_name NOT LIKE '%Windows%' AND book_name LIKE '%Microsoft%';
SELECT * FROM BOOKS WHERE book_name REGEXP '[0-9]';
SELECT book_name FROM BOOKS WHERE book_name REGEXP '([0-9][^0-9]*){3,}';
SELECT * FROM BOOKS WHERE book_name REGEXP '^([^0-9]*[0-9]){5}[^0-9]*$';