-- Check Number of Rows
SELECT COUNT(*)
FROM [Ecommerce_Data-1]

-- Table Rearranged
SELECT "Date", CustomerID, InvoiceNo, StockCode, "Description", Quantity, UnitPrice, Country, "Hour"
FROM [Ecommerce_Data-1]
ORDER BY "Date" DESC

-- Show the countries that has their data in the table
Select Distinct Country
From [Ecommerce_Data-1]
Order BY Country

-- Show the number of transaction that took place in each country
Select Country, COUNT(Country) TotalTransaction
From [Ecommerce_Data-1]
GROUP BY Country
ORDER BY TotalTransaction   DESC

-- Show the number of transaction that took place in each day
Select [Date], COUNT([Date]) TransactionToday
From [Ecommerce_Data-1]
GROUP BY [Date]
ORDER BY [Date]   DESC

-- Show the date with higher trasaction
Select [Date], COUNT([Date]) TransactionToday
From [Ecommerce_Data-1]
GROUP BY [Date]
ORDER BY [TransactionToday]   DESC

-- Calculate the  amount of sales per transaction
SELECT Date, Description, Quantity, UnitPrice, (Quantity * UnitPrice) Sales, Country
FROM [Ecommerce_Data-1]
ORDER BY Date DESC

-- Show the total amount of sales and transaction per country
SELECT Country, SUM((Quantity * UnitPrice)) TotalSales, COUNT(Country) TotalTransaction
FROM [Ecommerce_Data-1]
GROUP BY Country
ORDER BY TotalSales DESC

-- Show the total amount of sales in the data
Select SUM((Quantity * UnitPrice)) TotalOverallSales
FROM [Ecommerce_Data-1]