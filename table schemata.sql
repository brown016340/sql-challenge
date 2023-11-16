DROP TABLE IF EXISTS dept_emp,
                     dept_manager,
                     titles,
                     salaries, 
                     employees, 
                     departments;

CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title VARCHAR(5),
	birth_date date,
    first_name VARCHAR(16) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    sex VARCHAR(1),    
    hire_date date
);

SELECT * from employees; 

CREATE TABLE departments (
    dept_no VARCHAR(4),
    dept_name   VARCHAR(40),
    PRIMARY KEY (dept_no),
    UNIQUE (dept_name)
);

SELECT * from departments;

CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
	emp_no INT,
    PRIMARY KEY (emp_no,dept_no)
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
); 

SELECT * from dept_manager;

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(4),
    PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * from dept_emp;

CREATE TABLE titles (
	title_id VARCHAR(5),
	title VARCHAR(40),
	UNIQUE (title_id, title)
);

SELECT * from titles;

CREATE TABLE salaries (
	emp_no INT,
    salary INT,
    PRIMARY KEY (emp_no)
); 

SELECT * from salaries;