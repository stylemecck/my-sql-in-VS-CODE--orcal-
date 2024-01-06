CREATE TABLE Employee (
    emp_id VARCHAR2(10),
    emp_name VARCHAR2(290)
);

ALTER TABLE Employee ADD PRIMARY KEY (emp_id);

CREATE TABLE PROJECT(
    Project_id varchar(10),
    Project_name VARCHAR(400),
    Chief_architech VARCHAR(300)
);

ALTER TABLE PROJECT ADD PRIMARY KEY (Project_id);

CREATE TABLE assign_to(
    project_id VARCHAR(10),
    emp_id VARCHAR(10),
    FOREIGN KEY (project_id) REFERENCES PROJECT(project_id),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);