select trabajador.first_name, jefe.first_name from employees trabajador join employees jefe
on (trabajador.manager_id = jefe.employee_id)
