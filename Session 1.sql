REM   Script: Session 01
REM   practical DBMS

create table employee( 
    emp_no number, 
    emp_name varchar2(10), 
    job varchar2(10), 
    mgr number, 
    salary number 
);

alter table employee 
add commission number;

insert into employee(emp_no, emp_name, job, mgr, salary, commission) 
values(101, 'Bibas', 'Teacher', 1, 32000, 5000);

insert into employee(emp_no, emp_name, job, mgr, salary, commission) 
values(102, 'Ram', 'Accountant', 2, 25000, 3000);

insert into employee(emp_no, emp_name, job, mgr, salary, commission) 
values(103, 'Shyam', 'Coach', 3, 29000, 3300);

insert into employee(emp_no, emp_name, job, mgr, salary, commission) 
values(104, 'Hari', 'Sweeper', 4, 9000, 300);

insert into employee(emp_no, emp_name, job, mgr, salary, commission) 
values(105, 'Krishna', 'Gardener', 5, 12000, 500);

update employee 
set job = 'traineer' 
where emp_no = 105;

select * from employee;

update employee 
set job = 'gardener' 
where emp_no = 105;

update employee 
set job = 'traineer' 
where emp_no = 103;

delete from employee 
where emp_no = 105;

select * from employee;

create table department( 
    dept_no number, 
    d_name varchar2(10), 
    d_loc varchar2(10) 
);

alter table department 
add designation varchar2(10);

insert into department(dept_no, d_name, d_loc, designation) 
values (7, 'Finance', 'A-block', 'Money');

insert into department(dept_no, d_name, d_loc, designation) 
values (8, 'Marketing', 'H-block', 'Market');

insert into department(dept_no, d_name, d_loc, designation) 
values (9, 'Medical', 'M-block', 'Health');

select * from department;

select d_name from department;

update department 
set designation = 'Accountant' 
where dept_no = 9;

update department 
set d_loc = null;

select * from department;

create table customer( 
    c_no number primary key, 
    c_fname varchar2(10) not null, 
    c_lname varchar2(10) not null, 
    product varchar2(10) not null, 
    price number not null 
);

alter table customer 
add constraint unique_name unique(c_fname);

create table employee2( 
    e_id number, 
    e_name varchar2(10), 
    salary number, 
    age number 
);

insert into employee2(e_id, e_name, salary, age) 
values (101, 'Bibas', 32000, 21);

insert into employee2(e_id, e_name, salary, age) 
values (102, 'Ram', 21000, 24);

insert into employee2(e_id, e_name, salary, age) 
values (103, 'Shyam', 27000, 22);

insert into employee2(e_id, e_name, salary, age) 
values (104, 'Hari', 35000, 41);

insert into employee2(e_id, e_name, salary, age) 
values (105, 'Harsh', 12000, 18);

insert into employee2(e_id, e_name, salary, age) 
values (106, 'Krishna', 22000, 27);

insert into employee2(e_id, e_name, salary, age) 
values (107, 'Avinash', 12000, 23);

select * from employee2;

select count(*) from employee2;

select max(age) from employee2;

select min(salary) from employee2;

select sum(age) from employee2;

select avg(salary) from employee2;

select salary from employee2 
order by salary asc;

select salary from employee2 
order by salary desc;

select e_name, salary from employee2 
where age < 29 and salary < 20000;

alter table department 
add constraint dept_pk primary key(dept_no);

alter table employee 
add dept_no number;

select * from department;

select * from employee;

select * from employee;

update employee 
set dept_no = 7 
where emp_no = 101;

update employee 
set dept_no = 8 
where emp_no = 102;

update employee 
set dept_no = 7 
where emp_no = 103;

update employee 
set dept_no = 9 
where emp_no = 104;

select * from employee;

