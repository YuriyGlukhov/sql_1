WITH CreditWithPrevious AS (
SELECT
month,
cluster,
credit_amount,
LAG(credit_amount) OVER (PARTITION BY cluster ORDER BY
month) AS PreviousCreditAmount
FROM Clusters
)

SELECT
month,
cluster,
credit_amount,
PreviousCreditAmount,
COALESCE(credit_amount - PreviousCreditAmount, 0) AS Difference
FROM CreditWithPrevious;