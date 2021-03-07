DROP TABLE departments
CREATE TABLE departments (
	
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

SELECT * FROM Employees


CREATE TABLE Dep_Emp (

	Employee_Num INTEGER NOT NULL,
	Department_Num VARCHAR(10) NOT NULL
);

CREATE TABLE Dep_Manager (

	Department_Num VARCHAR(10) NOT NULL,
	Employee_Num INTEGER NOT NULL
);

CREATE TABLE Employees (

	Employee_Num INTEGER NOT NULL,
	Employee_Title_ID VARCHAR(10) NOT NULL,
	Birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE
);

CREATE TABLE salaries (

	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL
);

CREATE TABLE titles (

	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(30) NOT NULL
);


SELECT * FROM dep_manager
	

	