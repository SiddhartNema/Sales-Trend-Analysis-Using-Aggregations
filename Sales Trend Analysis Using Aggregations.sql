create database su;
CREATE TABLE online_sales (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(10,2),
    CustomerID VARCHAR(20),
    Country VARCHAR(100),
    Discount DECIMAL(5,2),
    PaymentMethod VARCHAR(50),
    ShippingCost DECIMAL(10,2),
    Category VARCHAR(100),
    SalesChannel VARCHAR(50),
    ReturnStatus VARCHAR(50),
    ShipmentProvider VARCHAR(100),
    WarehouseLocation VARCHAR(50),
    OrderPriority VARCHAR(50)
);

SET GLOBAL local_infile = 1;

select * from online_sales;

SELECT 
    YEAR(InvoiceDate) AS year,
    MONTH(InvoiceDate) AS month,
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS month_year,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    SUM(UnitPrice * Quantity) AS total_revenue
FROM online_sales
WHERE YEAR(InvoiceDate) = 2023
GROUP BY 
    YEAR(InvoiceDate), 
    MONTH(InvoiceDate), 
    DATE_FORMAT(InvoiceDate, '%Y-%m')
ORDER BY year, month
LIMIT 0, 1000;

SELECT 
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS month_year,
    SUM(UnitPrice * Quantity) AS total_revenue
FROM online_sales
WHERE YEAR(InvoiceDate) = 2023
GROUP BY month_year
ORDER BY total_revenue DESC
LIMIT 5;


