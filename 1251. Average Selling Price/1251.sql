-- Write your PostgreSQL query statement below
SELECT Prices.product_id,
        COALESCE(ROUND(SUM(units * price)::numeric / SUM(units), 2), 0) AS average_price 
FROM Prices
LEFT JOIN UnitsSold 
ON UnitsSold.product_id = Prices.product_id AND purchase_date BETWEEN start_date AND end_date
GROUP BY (Prices.product_id)