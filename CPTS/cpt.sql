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
