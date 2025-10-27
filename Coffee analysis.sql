-- Revenue per transaction 
SELECT transaction_id,
       transaction_qty*unit_price AS revenue
FROM sales.retail.bright_coffee;

-- Remember that with the ID's we use the COUNT NOT SUM 
-- This is the total number of sales/transactions made
SELECT COUNT(transaction_id) AS number_of_transactions
FROM sales.retail.bright_coffee;

--COUNT the number of different shops we have in this data 
SELECT COUNT(DISTINCT store_id) AS number_of_shops
FROM sales.retail.bright_coffee;

-- To show us the name of the different store location which is actually 3 different shops
SELECT DISTINCT store_location, store_id
FROM sales.retail.bright_coffee;

--How to calculate the revenue by store location 
SELECT store_location,
       SUM(transaction_qty*unit_price) AS revenue
FROM sales.retail.bright_coffee
GROUP BY store_location;

-- What time does the shop opens
SELECT MIN(transaction_time) openig_time
FROM sales.retail.bright_coffee;

-- What time does the shop close
SELECT MAX(transaction_time) closing_time
FROM sales.retail.bright_coffee;


SELECT product_category,
       SUM(transaction_qty*unit_price) AS revenue,
       store_location,
       transaction_date,
       transaction_time,
       CASE
            WHEN transaction_time BETWEEN '06:00:00' AND '11:59:59' THEN '01. Morning'
            WHEN transaction_time BETWEEN '12:00:00' AND '15:59:59' THEN '02. Aftenoon'
            WHEN transaction_time BETWEEN '16:00:00' AND '19:59:59' THEN '03. Evening'
            WHEN transaction_time >= '20:00:00'  THEN '04. Night'
        END AS time_bucket
FROM sales.retail.bright_coffee
WHERE transaction_date>'2023-05-01'
GROUP BY product_category,
         store_location,
         transaction_date,
         time_bucket,
         transaction_time
ORDER BY revenue DESC;
