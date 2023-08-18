select departments.department_name, employees.first_name, locations.city
from employees, departments, locations
where departments.department_id = employees.department_id
and locations.location_id = departments.location_id
