-- Check Number of Rows
SELECT COUNT(*)
FROM [Ecommerce_Data-1]

-- Table Rearranged
SELECT "Date", CustomerID, InvoiceNo, StockCode, "Description", Quantity, UnitPrice, Country, "Hour"
FROM [Ecommerce_Data-1]
ORDER BY "Date" DESC