select department_id, round(avg(salary),2)
from employees
group by department_id
having avg(salary) > (select avg(salary) from employees)
