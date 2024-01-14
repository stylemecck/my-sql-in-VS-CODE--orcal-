-- create QUERY
Create table customers(
    id number(10) not null,
    name varchar(300) not NULL,
    city varchar (300) not null,
    CONSTRAINT customer_pk primary KEY (id));

ALTER table CUSTOMERS
ADD AGE VARCHAR(50);

SELECT *FROM CUSTOMERS;

INSERT INTO CUSTOMERS VALUES (1, 'Satyam Singh', 'patna', '20');
INSERT INTO CUSTOMERS values (2, 'Ramu Lal ', 'Jandaha ','30');
INSERT INTO CUSTOMERS values (3, 'Satyam Kumar ', 'patna ','');
INSERT INTO CUSTOMERS values (4 , 'Kundan Singh', 'Kolkata ','38');
INSERT INTO CUSTOMERS values ( 5, 'Chandan Singh', 'Delhi ','38');
INSERT INTO CUSTOMERS values ( 6, 'Pankaj Singh', 'Kolkata ','45');
INSERT INTO CUSTOMERS values ( 7, 'Kundan Kumar', 'Delhi ','45');
INSERT INTO CUSTOMERS values ( 8, 'Chandan Kumar', 'Kolkata ','62');
INSERT INTO CUSTOMERS values ( 9, 'Pankaj Kumar', 'Delhi ','38');
INSERT INTO CUSTOMERS values ( 10, 'Arvind Kumar', 'Pune ','54');
INSERT INTO CUSTOMERS values ( 11, 'Rajesh Kumar', 'Hydrabad ','50');
INSERT INTO CUSTOMERS values ( 12, 'Kundan Raj', 'Pune ','38');
INSERT INTO CUSTOMERS values (13 , 'Chandan Raj', 'Hydrabad ','60');
INSERT INTO CUSTOMERS values ( 14, 'Yesh Raj', 'Pune ','45');
INSERT INTO CUSTOMERS values ( 15, 'Sasi Suman', 'Hydrabad ','38');
INSERT INTO CUSTOMERS values ( 16, 'chanchal Suman', 'Lucknow ','56');
INSERT INTO CUSTOMERS values ( 17, 'Suman', 'Lucknow ','38');
INSERT INTO CUSTOMERS values ( 18, 'Suman kumar', 'Lucknow ','38');

alter table CUSTOMERS add country varchar(40);

-- updating/ adding empty table column to india country
update CUSTOMERS set country ='India';

-- adding column salary after creating table
alter table CUSTOMERS add salary NUMBER;

-- adiing salary amount to salary caption;
update CUSTOMERS set salary='46500' WHERE id= 5;
UPDATE CUSTOMERS set salary='55000' WHERE id='6';
UPDATE CUSTOMERS set salary='60000' WHERE id='7';
UPDATE CUSTOMERS set salary='50000' WHERE id='8';
UPDATE CUSTOMERS set salary='50000' WHERE id='9';
UPDATE CUSTOMERS set salary='70000' WHERE id='10';
UPDATE CUSTOMERS set salary='58000' WHERE id='15';
UPDATE CUSTOMERS set salary='640000' WHERE id='18';
UPDATE CUSTOMERS set salary='54000' WHERE id='17';
UPDATE CUSTOMERS set salary='64000' WHERE id='16';

SELECT name ,age, city,salary from CUSTOMERS where age>18 and salary >20000 
ORDER by age asc, salary desc;

create table suppliers
(
    supplier_id number,
    supplier_name VARCHAR(300)
);

insert into suppliers (supplier_id, supplier_name)
SELECT age, CITY
from CUSTOMERS
where age >18;

select *from suppliers;

select count(*) from CUSTOMERS WHERE age<18;

insert all 
into suppliers (supplier_id, supplier_name) values (90,'google')
into suppliers (supplier_id, supplier_name) values (91,'microsoft')
SELECT * FROM dual;


select CUSTOMERS.id, CUSTOMERS.name,  suppliers.supplier_id
from customers 
inner join suppliers 
on CUSTOMERS.name = suppliers.supplier_name;

SELECT c.id, c.name, s.supplier_name
FROM CUSTOMERS c
inner join suppliers s on c.city=s.supplier_name
ORDER by name;