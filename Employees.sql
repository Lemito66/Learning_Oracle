CREATE SEQUENCE sec_employees
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 999999999999


CREATE TABLE `employees` (
  `employee_id` number DEFAULT sec_employees.nextval PRIMARY KEY,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) UNIQUE NOT NULL,
  `salary` integer
);

-- Insertar valores
insert into employees (first_name, last_name, email, salary) values ('Juan', 'Perez', 'lemito66@gmail.com', 1000);

-- Creame 50 datos de prueba para la tabla employees 
BEGIN
  FOR i IN 1..50 LOOP
    INSERT INTO employees (first_name, last_name, email, salary) VALUES ('Juan' || i, 'Perez' || i, 'lemito' || i || '@gmail.com', 1000);
  END LOOP;
END;