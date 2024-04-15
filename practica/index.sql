SELECT Customers.CustomerName, Orders.OrderID, Orders.OrderDate, Orders.OrderTotal
FROM   Customers INNER JOIN
             Orders ON Customers.CustomerID = Orders.CustomerID



SELECT Customers.CustomerName, SUM(Orders.OrderTotal) AS Expr1, Orders.OrderDate
FROM   Customers INNER JOIN
             Orders ON Customers.CustomerID = Orders.CustomerID
WHERE (Orders.OrderDate >= CONVERT(DATETIME, '2022-02-18 00:00:00', 102))
GROUP BY Customers.CustomerName, Orders.OrderDate




SELECT Customers.CustomerName, Orders.OrderID, SUM(Orders.OrderTotal) AS Expr1
FROM   Customers INNER JOIN
             Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName, Orders.OrderID
ORDER BY Orders.OrderID DESC

-- En Oracle

select paciente.nm_paciente, convenio.nm_convenio, prestador.nm_prestador
from atendime
inner join paciente on paciente.cd_paciente = atendime.cd_paciente 
inner join convenio on atendime.cd_convenio = convenio.cd_convenio
inner join prestador on prestador.cd_prestador = atendime.cd_prestador
where atendime.cd_atendimento = 93217

select * from sinal_vital

select signo.ds_sinal_vital, count(*) from sinal_vital signo group by signo.ds_sinal_vital

select * from convenio

select * from atendime where atendime.cd_atendimento = 93217


select * from prestador

select * from PAR_MED

select * from itcoleta_sinal_vital

select * from coleta_sinal_vital

select * from sinal_vital