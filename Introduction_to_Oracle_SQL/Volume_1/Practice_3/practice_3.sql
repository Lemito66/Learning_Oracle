-- Usando expressiones condicionales con Case
select email from employees

select case 
       email when 'lemito10@gmail.com' then 'Este es el email de lemito66'
       else 'No es el email de lemito66'
       end as "Email de lemito66"  
 from employees

--Sintaxis de Case
Case
When condition1 Then result1
When condition2 Then result2
When condition3 Then result3
Else result4
End

select * from dual


SELECT ADD_MONTHS(TO_DATE('31/10/2007','DD/MM/YYYY'),4) as Dias FROM DUAL;

select current_date from dual
