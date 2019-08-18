create table departments (

	emp_no varchar(10) primary key,
	dept_no int,
	from_date date,
	to_date date
);

create table dept_employee (
	
	emp_no int,
	dept_no varchar(20),
	from_date date,
	to_date date
);

create table dept_manager (

	dept_no varchar(8),
	emp_no int primary key,
	from_date date,
	to_date date
	);
	
create table employees (

	emp_no int,
	birth_date date,
	first_name varchar(25),
	last_name varchar(25),
	gender varchar(255),
	hire_date date
);

create table salaries (

	emp_no int primary key,
	salary int,
	from_date date,
	to_date date
);


create table titles (

	emp_no int primary key,
	title varchar(20),
	from_date date,
	to_date date
);