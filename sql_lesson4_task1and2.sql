--Задание 1: Ранжирование продуктов по средней цене
--Задание: Ранжируйте продукты в каждой категории на основе их средней цены
--(AvgPrice).

WITH ProductAvgPrice AS (
SELECT
p.CategoryID,
p.ProductID,
p.ProductName,
AVG(p.Price) AS AvgPrice
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.CategoryID, p.ProductID, p.ProductName
)

SELECT
CategoryID,
ProductID,
ProductName,
AvgPrice,
RANK() OVER (PARTITION BY CategoryID ORDER BY AvgPrice DESC) AS
ProductRank
FROM ProductAvgPrice;




--Задание 2: Средняя и максимальная сумма кредита по месяцам
--Задание: Рассчитайте среднюю сумму кредита (AvgCreditAmount) для каждого
--кластера в каждом месяце и сравните её с максимальной суммой кредита
--(MaxCreditAmount) за тот же месяц

WITH AvgCredit AS (
SELECT
month,
cluster,
AVG(credit_amount) AS AvgCreditAmount
FROM Clusters
GROUP BY month, cluster
),

MaxCredit AS (
SELECT
month,
MAX(credit_amount) AS MaxCreditAmount
FROM Clusters
GROUP BY month
)

SELECT
a.month,
a.cluster,
a.AvgCreditAmount,
m.MaxCreditAmount
FROM AvgCredit a
JOIN MaxCredit m ON a.month = m.month;

