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

-- Present the table showing only Purchase Date, Store Location, Quantity Purchased and Sales
SELECT purchase_date, store_location, quantity_purchased, sales
From [transaction]

-- Present the table showing only Purchase Date, Store Location, Quantity Purchased and Sales 
-- and the data is ordered showing the highest Quantity Purchased and Sales first
SELECT purchase_date, store_location, quantity_purchased, sales
From [transaction]
Order by quantity_purchased DESC, sales DESC

-- Show the transaction that took place on 2021-10-16 with the highest Quantity Purchased and Sales
-- shown first
SELECT purchase_date, store_location, quantity_purchased, sales
From [transaction]
WHERE purchase_date = '2021-10-16'
Order by quantity_purchased DESC, sales DESC

-- Show Total Purchase and Sales in each day with the highest shown first
SELECT purchase_date, sum(quantity_purchased) as TotalPurchase, sum(sales) as TotalSales
From [transaction]
GROUP by purchase_date
Order by TotalPurchase DESC

-- Show the Customer table
SELECT *
From customers

-- Join the Transaction and Customer table together 
SELECT *
From [transaction]
Join customers
ON [transaction].customer_id = customers.customer_id

-- Filtered some important columns out of the joined Transaction and Customer Table
SELECT [transaction].customer_id, purchase_date, store_location, quantity_purchased, sales, customer_lifestage, customer_premium
From [transaction]
Join customers
ON [transaction].customer_id = customers.customer_id

-- Filtered out the kind of Customer Premium in each Store Location
SELECT [transaction].customer_id, store_location, customer_premium
From [transaction]
Join customers
ON [transaction].customer_id = customers.customer_id

-- Filtered out the Store Location against Customer Premium, Customer Lifestage and Sales
SELECT [transaction].customer_id, store_location, customer_premium, customer_lifestage, sales
From [transaction]
Join customers
ON [transaction].customer_id = customers.customer_id
Order by sales DESC