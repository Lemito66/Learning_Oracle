-- Nos permite crear una variable del mismo tipo de otra

declare 
   number_one number;
   number_two number_one%type; -- Aqui decimos que el número 2 va a ser del mismo tipo de dato de numero 1
   employe employees.salary%type; -- Aqui decimos que la variable employe va a ser del mismo tipo de dato de la columna salary de la tabla employees
   
begin
  employe :=100;
  
end;
