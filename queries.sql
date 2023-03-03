---List the employee number, last_name, first_name, sex and salary of each employee

select employees.employee_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries on employees.employee_no = salaries.employee_no;

--List the first_name, last_name, and hire_date for the employees who were hired in 1986

select employee_no, first_name, last_name, hire_date from employees
where hire_date >= '1985-12-31'
and hire_date<'1987-01-01';


--List the manager of each department along with their department_number, department_name, employee_number, last_name, and first_name

SELECT
--department_manager
department_manager.department_no  mgr_dept_no ,
department_manager.employee_no  mgr_empl_id ,
--departments  
departments.department_name,
--employees 		 
employees.first_name  mgr_first_name,
employees.last_name  mgr_last_name
--employees.employee_no
FROM department_manager
inner join departments on departments.department_no =department_manager.department_no
join employees on employees.employee_no = department_manager.employee_no;
  

--List the department number for each employee along with that employee's employee_number, last_name, first_name and department_name

Select employees.employee_no,
        employees.last_name,
        employees.first_name,
        department_emp.department_no,
        departments.department_name
from employees
inner join department_emp ON
employees.employee_no = department_emp.employee_no
inner join departments ON
departments.department_no = department_emp.department_no
order by department_no;    

--List first_name, last_name, and sex of each employee whose first_name is Hercules and wwhose last_name  begins with the letter "B"

select * from employees
where first_name = 'Hercules'
and last_name like 'B%';

--List each employee in the sales department including their employee_number, last_name, first_name

select e.employee_no,e.last_name, e.first_name, d.department_name
from employees as e
join department_emp ON
e.employee_no = department_emp.employee_no
inner join departments as d on 
department_emp.department_no = d.department_no
where department_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee_number, last_name,first_name and department_name

select e.employee_no, e.last_name, e.first_name, d.department_name
from employees as e
join department_emp ON
e.employee_no = department_emp.employee_no
inner join departments as d ON
department_emp.department_no = d.department_no
where department_name = 'Sales'
or department_name = 'Development';

--List the frequency counts, in descending order, of all the employees last_names(that is , how many employess share each last_name)

select last_name, count(*) as freq_count
from employees
group by last_name
order by freq_count DESC