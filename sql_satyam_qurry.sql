Create table Movie
(
m_id varchar2(10) primary key,
m_name varchar(1000),
m_language varchar(100),
genre varchar(100),
rating number(3,1));

INSERT INTO movie(m_id, m_name, M_LANGUAGE, GENRE, RATING)
VALUES
('M-102', 'Money Hiest', 'Hindi', 'Thrill', 7.2);

SELECT *from MOVIE;

SELECT DISTINCT c.c_name, c.c_id, B.B_DATE
FROM customer c
INNER JOIN booking b ON c.c_id=b.c_id
INNER JOIN movie m ON m.m_id = b.m_id
WHERE c.age >25 and m.genre !='horror';

SELECT DISTINCT c.c_name , c.C_ID
FROM customer c
INNER JOIN booking b ON c.c_id = b.c_id
INNER JOIN movie m ON b.m_id = m.m_id
WHERE c.age > 25 AND m.genre != 'horror';

select DISTINCT c.c_name, c.c_id
from customer c
INNER JOIN booking b on c.c_id=b.c_id
INNER JOIN movie m on m.m_id = b.m_id
where c.age>25 and m.genre <>'horror';

SELECT c.c_name, c.phone
FROM customer c
JOIN booking b ON c.c_id = b.c_id
JOIN movie m ON b.m_id = m.m_id
WHERE b.b_date = '10-11-23' AND m.m_language = 'hindi';

ALTER TABLE customer
ADD CONSTRAINT chk_age CHECK (age >= 18);