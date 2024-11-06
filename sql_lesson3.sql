--Задание 1: Анализ прибыли по категориям продуктов
--Задание: Определите общую прибыль для каждой категории продуктов,
--используя таблицы OrderDetails, Orders и Products. Для расчета прибыли
--умножьте цену продукта на количество, а затем суммируйте результаты по
--категориям.
--Подсказка: Используйте JOIN для объединения таблиц OrderDetails,
--Orders, Products и Categories. Примените агрегацию с функцией SUM.

SELECT
c.CategoryName,
SUM(p.Price * od.Quantity) AS TotalProfit
FROM OrderDetails od
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

--Задание 2: Количество заказов по регионам
--Задание:
--Определите количество заказов, размещенных клиентами из различных стран, за
--каждый месяц.


SELECT
c.Country AS Country,
MONTH(o.OrderDate) AS Month,
YEAR(o.OrderDate) AS Year,
COUNT(o.OrderID) AS OrderCount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Country, MONTH(o.OrderDate), YEAR(o.OrderDate);

--Задание 3: Средняя продолжительность кредитного срока для
--клиентов
--Задание: Рассчитайте среднюю продолжительность кредитного срока для
--клиентов по категориям образования.

SELECT
education,
AVG(credit_term) AS avg_credit
FROM Clusters
GROUP BY education;



