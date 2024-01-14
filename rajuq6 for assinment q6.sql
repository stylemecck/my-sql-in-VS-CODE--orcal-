CREATE table employee (
    emp_id VARCHAR(19) PRIMARY KEY,
    emp_name VARCHAR(100)
);

insert into EMPLOYEE (emp_id, emp_name) values ('EMP-1','Satyam Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-2','Sushant Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-3','Akash Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-4','Rajeshwar Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-5','Swetank Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-6','Kartik Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-7','Sonu Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-8','Sonali Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-9','Puja Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-10','Kiran Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-11','Mahi Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-12','Shweta Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-13','Rajnish Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-14','Kedar Singh');
insert into EMPLOYEE (emp_id, emp_name) values ('EMP-15','Sunil Singh');

select *from EMPLOYEE;

create table project (
    project_id VARCHAR(10) PRIMARY KEY,
    project_name varchar(222),
    chif_architech varchar(333)
);'POJ-','',''
;
insert into project (project_id, project_name, chif_architech) values('POJ-1','Stylemcck Web Dev','Sumit');
insert into project (project_id, project_name, chif_architech) values('POJ-2','St backend','Satyam Singh');
insert into project (project_id, project_name, chif_architech) values('POJ-3','Problem Solving','Love Babbar');
insert into project (project_id, project_name, chif_architech) values('POJ-4','Time Paas','Lakshya Sidoiya');
insert into project (project_id, project_name, chif_architech) values('POJ-5','Pathan','Sarukh Khan');
insert into project (project_id, project_name, chif_architech) values('POJ-6','Web Dev with mongoDB','Sumit');
insert into project (project_id, project_name, chif_architech) values('POJ-7','Berlin:Money Hiest','Berlin');
insert into project (project_id, project_name, chif_architech) values('POJ-8','Netflix','Vega Movies');
insert into project (project_id, project_name, chif_architech) values('POJ-9','Under Cover Time Paas','Sumit');
insert into project (project_id, project_name, chif_architech) values('POJ-10','Raw With Rani','Joya Khan');
insert into project (project_id, project_name, chif_architech) values('POJ-11','Khalistan','Vindar Waal');
insert into project (project_id, project_name, chif_architech) values('POJ-12','West Bangal Barbad','Mata Di');
insert into project (project_id, project_name, chif_architech) values('POJ-13','Bharat Thoro Yatra','Rahul Gandhi');
insert into project (project_id, project_name, chif_architech) values('POJ-14','South and North Divide','Indi Allience');

select *from Project;

create table assigned_to (
    project_id varchar(19),
    emp_id varchar(10),
    FOREIGN KEY (project_id) REFERENCES PROJECT(project_id),
  FOREIGN key  (emp_id) REFERENCES employee(emp_ID)
);

INSERT INTO assigned_to (project_id, emp_id) values ('POJ-1','EMP-1');
INSERT INTO assigned_to (project_id, emp_id) values ('POJ-1','EMP-2');
INSERT INTO assigned_to (project_id, emp_id) values ('POJ-2','EMP-1');
INSERT INTO assigned_to (project_id, emp_id) values ('POJ-2','EMP-3');
INSERT INTO assigned_to (project_id, emp_id) values ('POJ-3','EMP-4');
INSERT INTO assigned_to (project_id, emp_id) values ('POJ-4','EMP-5');
INSERT INTO assigned_to (project_id, emp_id) values ('POJ-5','EMP-6');
INSERT INTO assigned_to (project_id, emp_id) values ('POJ-5','EMP-7');
INSERT INTO assigned_to (project_id, emp_id) values ('POJ-6','EMP-8');
INSERT INTO assigned_to (project_id, emp_id) values ('POJ-6','EMP-9');
INSERT INTO assigned_to (project_id, emp_id) values ('POJ-7','EMP-10');
INSERT INTO assigned_to (project_id, emp_id) values ('POJ-10','EMP-12');
INSERT INTO assigned_to (project_id, emp_id) values ('POJ-10','EMP-13');

select *from assigned_to;