1. List the following details of each employee: employee number, last name, first name, gender, and salary.ALL


select emp_no, first_name, last_name, gender 
from employees;

2. List employees who were hired in 1986.

select * from employees
where Extract(year FROM hire_date) = 1986

3. List the manager of each department with the following information: 
department number, department name, the managers employee number, ----------------------------
last name, first name, and start and end employment dates.

select dm.dept_no, d.dept_name, e.emp_no, e.first_name, e.last_name, 
dm.from_date, dm.to_date
from dept_manager as dm
inner join departments as d
on dm.dept_no=d.dept_no
inner join employees as e
on dm.emp_no=e.emp_no;

4. List the department of each employee with the following information: employee 
number, last name, first name, and department name.

select de.dept_no, d.dept_name, e.emp_no, e.first_name, e.last_name
from employees as e
inner join dept_employee as de
on de.emp_no=e.emp_no
inner join departments as d
on d.dept_no=de.dept_no;

5. List all employees whose first name is "Hercules" and last names begin with "B."

select emp_no, first_name, last_name from employees
where first_name='Hercules' and last_name like 'B%';

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select dp.dept_no, de.emp_no, e.first_name, e.last_name, dp.dept_name from employees as e
inner join dept_employee as de
on e.emp_no=de.emp_no
inner join departments as dp
on dp.dept_no=de.dept_no
where dp.dept_name ='Sales';


7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select dp.dept_no, de.emp_no, e.first_name, e.last_name, dp.dept_name from employees as e
inner join dept_employee as de
on e.emp_no=de.emp_no
inner join departments as dp
on dp.dept_no=de.dept_no
where dp.dept_name ='Sales' OR dp.dept_name='Development';

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name

select last_name, count(last_name) as "to_count_last_name"
from employees
group by
last_name
order by to_count_last_name desc;