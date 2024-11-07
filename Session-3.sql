create table student ( 
    student_id number primary key, 
    student_name varchar2(40) not null, 
	address1 varchar2(300), 
    gender varchar2(15), 
    course varchar2(8), 
    dept_no number 
);

create table course( 
	dept_no number primary key, 
    d_name varchar2(20), 
    location varchar2(10) 
);

insert into student(student_id, student_name, address1, gender, course, dept_no) 
values (1, 'Bibas', 'Kathmandu', 'Male', 'BCA', 1);

insert into student(student_id, student_name, address1, gender, course, dept_no) 
values(2, 'Avinash', 'Jhapa', 'Male', 'MCA', 2);

insert into student(student_id, student_name, address1, gender, course, dept_no) 
values(3, 'Sohan', 'Delhi', 'Male', 'B.Tech', 3);

insert into student(student_id, student_name, address1, gender, course, dept_no) 
values(4, 'Rohan', 'Faridabad', 'Male', 'M.Tech', 4);

insert into student(student_id, student_name, address1, gender, course, dept_no) 
values(5, 'Susmita', 'Kolkata', 'Female', 'BHM', 5);

insert into course(dept_no, d_name, location) 
values(1, 'SCA', 'C-Block');

insert into course(dept_no, d_name, location) 
values(2, 'MCA_D', 'D-Block');

insert into course(dept_no, d_name, location) 
values(3, 'B.Tech_D', 'E-Block');

insert into course(dept_no, d_name, location) 
values(4, 'M.Tech_D', 'F-Block');

insert into course(dept_no, d_name, location) 
values(5, 'BHM_D', 'G-Block');

select * from student;

select student_id, course from student;

select course, location from student 
join course on student.dept_no = course.dept_no;

select * from student 
where course = 'MCA';

select student_name from student 
where student_id in (7369, 7777, 2233);

select student_name from student 
where dept_no not in (10, 40);

select * from student 
where student_name like 'S%';

select * from student  
where student_name like '_k%';

select * from student 
where dept_no = null;

select * from student 
order by course asc;

select count(*) from student;

select count(*) from student 
where course = 'BCA';

select * from student 
where dept_no in (1,2);

select * from student 
order by course;

select * from student 
order by student_name asc;

