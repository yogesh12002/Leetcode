# Write your MySQL query statement below
select product_id ,year as first_year, quantity, price 
from sales 
WHERE 
(product_id, year) IN (
SELECT 
product_id, 
MIN(year)
FROM 
Sales
GROUP BY 
product_id)