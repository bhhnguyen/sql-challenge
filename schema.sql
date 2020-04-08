DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
  dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
  dept_name VARCHAR(30)
);

CREATE TABLE employees (
  emp_no INTEGER PRIMARY KEY NOT NULL,
  birth_date DATE,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  gender VARCHAR(10),
  hire_date VARCHAR(20)
);

CREATE TABLE dept_emp (
  emp_no INTEGER,
  dept_no VARCHAR(10),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  from_date VARCHAR(20),
  to_date VARCHAR(20)
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(10),
  emp_no INTEGER,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  from_date VARCHAR(20),
  to_date VARCHAR(20)
);

CREATE TABLE salaries (
  emp_no INTEGER,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  salary INTEGER,
  from_date VARCHAR(20),
  to_date VARCHAR(20)
);

CREATE TABLE titles (
  emp_no INTEGER,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  title VARCHAR(30),
  from_date VARCHAR(20),
  to_date VARCHAR(20)
);