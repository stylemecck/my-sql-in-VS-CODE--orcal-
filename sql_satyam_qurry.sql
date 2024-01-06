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