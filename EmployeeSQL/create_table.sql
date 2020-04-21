-- 1. Create Employee table
DROP Table employees;
CREATE TABLE employees (
    emp_no int not null,
	birth_date VARCHAR(30) not null,
    first_name VARCHAR(30) not null,
    last_name VARCHAR(30) not null,
	gender VARCHAR(30) not null,
	hire_date VARCHAR(30) not null,
    PRIMARY KEY (emp_no)
);
 -- 2. Create Department table
DROP Table departments;
CREATE TABLE departments (
    dept_no VARCHAR(30) not null,
    dept_name VARCHAR(30) not null,
    PRIMARY KEY (dept_no)
);

-- 3. Create Department Employee table
DROP Table dept_emp;
CREATE TABLE dept_emp (
	emp_no int not null,
    dept_no VARCHAR(30) not null,
    from_date VARCHAR(30) not null,
	to_date VARCHAR(30) not null,
	Foreign KEY (emp_no) references employees (emp_no),
    Foreign KEY (dept_no) references departments (dept_no)
);

--4 Create Department Manager table
DROP Table dept_manager;
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) not null,
	emp_no int not null,
    from_date VARCHAR(30) not null,
	to_date VARCHAR(30) not null,
	Foreign KEY (dept_no) references departments (dept_no),
	Foreign KEY (emp_no) references employees (emp_no)
);

--5 Create Salaries table
DROP Table salaries;
CREATE TABLE salaries (
	emp_no int not null,
	salary int not null,
    from_date VARCHAR(30) not null,
	to_date VARCHAR(30) not null,
	Foreign KEY (emp_no) references employees (emp_no)
);

--6 Create Titles table
DROP Table titles;
CREATE TABLE titles (
	emp_no int not null,
	title VARCHAR(30) not null,
    from_date VARCHAR(30) not null,
	to_date VARCHAR(30) not null,
	Foreign KEY (emp_no) references employees (emp_no)
);



