CREATE TABLE Flight (
    fid VARCHAR(10),
    f_from VARCHAR(100),
    T_to VARCHAR(100),
    Departs TIMESTAMP,
    Arrive TIMESTAMP,
    Price NUMBER(8,3)
);

-- alter table flight add primary key (fid);
-- ALTER TABLE FLIGHT DROP COLUMN  ARRIVE;
-- ALTER TABLE FLIGHT ADD ARRIVE TIMESTAMP;

-- INSERT INTO FLIGHT (fid, F_FROM, T_TO, DEPARTS, ARRIVE, PRICE)
-- VALUES
-- ('F-102', 'Patna', 'Delhi', TIMESTAMP( 'YYYY-MM-DD HH:MM' , '2024-01-02 11:59'), TIMESTAMP('YYYY-MM-DD HH:MM','2024-01-03 12:20'), 5999.99);

INSERT INTO FLIGHT (fid, F_FROM, T_TO, DEPARTS, ARRIVE, PRICE)
VALUES
('F-103', 'Kolakata', 'Patna', TIMESTAMP '2023-07-28 11:22:00', TIMESTAMP '2023-07-28 12:22:00', 79884.70);

SELECT *FROM FLIGHT;

CREATE TABLE pilot (
    pid VARCHAR(10) PRIMARY KEY,
    NAME VARCHAR(300),
    salary NUMBER(10,3)
);

INSERT into  pilot (pid, name, salary)
VALUES 
('P-111', 'Satyam Singh', 200000);

INSERT INTO pilot  (pid, name, salary) VALUES ('p-112', 'Ram Jivan Ray', 80000);
INSERT INTO pilot  (pid, name, salary) VALUES ('p-113', 'Ram Swarup Singh', 90000);
INSERT INTO pilot  (pid, name, salary) VALUES ('p-114', 'Ram Lal Bhagat', 50000);
INSERT INTO pilot  (pid, name, salary) VALUES ('p-115', 'Sushant Kushwaha', 250000);
INSERT INTO pilot  (pid, name, salary) VALUES ('p-116', 'Ritikesh Kushwaha', 400000);
INSERT INTO pilot  (pid, name, salary) VALUES ('p-117', 'Satyam Kushwaha', 450000);

SELECT *from pilot;

create table certified (
    pid varchar(10),
    fid varchar(10),
    foreign key (pid) references pilot (pid),
    FOREIGN KEY (fid) references FLIGHT(FID)
);

insert into certified  values ('P-111', 'F-103');
insert into certified values ('p-112', 'F-102');
insert into certified values ('p-113', 'F-101');
insert into certified values ('p-114', 'F-102');
insert into certified values ('p-115', 'F-103');
insert into certified values ('p-117', 'F-103');

insert into certified values ('p-113', 'F-101');
insert into certified values ('p-113', 'F-103');


select *from certified;

-- q1. find fid of the flights such that all pilots certifed to opertate them more than 80000

select distinct f.fid
from FLIGHT F
where not exists (
    SELECT c.pid 
    from certified c
    INNER join pilot p on c.pid = p.pid
    where c.fid = f.fid and p.salary <=80000
);

SELECT fid FROM FLIGHT 
where not exists (
    select certified.pid
    from certified 
    join pilot on certified.pid = pilot.pid
    where certified.fid = flight.fid and pilot.salary <=80000 
);

-- q2
-- select *from pilot 
-- join(
--     SELECT pid, count(fid) as number_flight
--     FROM certified 
--     group by pid
--     having number_flight > 3
-- )certified on pilot.pid = certified.pid;

SELECT *
FROM pilot
JOIN (
    SELECT pid, COUNT(fid) as number_flight
    FROM certified
    GROUP BY pid
    HAVING COUNT(fid) > 3
) certified ON pilot.pid = certified.pid;


-- q3.
SELECT count(*) as total_pilots from pilot;