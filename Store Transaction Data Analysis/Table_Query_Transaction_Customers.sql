-- Show the Transaction Table
SELECT *
From [transaction]

-- Show the Average Sales
SELECT avg(sales) as AvgSales
From [transaction]

-- Show where the stores are located
SELECT distinct store_location
From [transaction]

-- Show the number of transactions that took place in each location
SELECT store_location, count(store_location) as TransactionCount 
From [transaction]
GROUP by store_location
Order by TransactionCount DESC

-- Show the total purchase made at each location
SELECT store_location, sum(quantity_purchased) Total_Quantity_Purchased
FROM [transaction]
GROUP BY store_location
ORDER BY Total_Quantity_Purchased DESC

-- Show the total purchase made at each location and the number of times the transaction was made
SELECT store_location, sum(quantity_purchased) Total_Quantity_Purchased, COUNT(store_location) Transaction_Count
FROM [transaction]
GROUP BY store_location
ORDER BY Total_Quantity_Purchased DESC

SELECT purchase_date, store_location, quantity_purchased, sales
From [transaction]

SELECT purchase_date, store_location, quantity_purchased, sales
From [transaction]
Order by quantity_purchased DESC, sales DESC

SELECT purchase_date, store_location, quantity_purchased, sales
From [transaction]
WHERE purchase_date = '2021-10-16'
Order by quantity_purchased DESC, sales DESC

SELECT purchase_date, sum(quantity_purchased) as TotalPurchase, sum(sales) as TotalSales
From [transaction]
GROUP by purchase_date
Order by TotalPurchase DESC

SELECT *
From customers

SELECT *
From [transaction]
Join customers
ON [transaction].customer_id = customers.customer_id

SELECT [transaction].customer_id, purchase_date, store_location, quantity_purchased, sales, customer_lifestage, customer_premium
From [transaction]
Join customers
ON [transaction].customer_id = customers.customer_id

SELECT [transaction].customer_id, store_location, customer_premium
From [transaction]
Join customers
ON [transaction].customer_id = customers.customer_id

SELECT [transaction].customer_id, store_location, customer_premium, customer_lifestage, sales
From [transaction]
Join customers
ON [transaction].customer_id = customers.customer_id
Order by sales DESC