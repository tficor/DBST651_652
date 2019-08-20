-- Author: Tracy Ficor DBST652, Group 2 Part 1
-- analysisPart1TracyFicor.sql

-- Fetch product_ID, product name, and product sales price

SELECT PRODUCT_ID, PRODUCT_NAME, SUM(LINE_ITEM_SALE_PRICE) AS "TOTAL SALES"  FROM SUPERSTORE GROUP BY PRODUCT_ID, PRODUCT_NAME;

-- Fetch sum of sales for each product id and product name. Display name, ID and total sales.

SELECT PRODUCT_ID, PRODUCT_NAME, LINE_ITEM_SALE_PRICE  FROM SUPERSTORE;

-- Fetch sum of sales for each order id and count the number of products on each order id. 

SELECT ORDER_ID, COUNT(*), SUM(LINE_ITEM_SALE_PRICE) AS "ORDER TOTAL" FROM SUPERSTORE GROUP BY ORDER_ID;

-- Fetch total quantity of each product id that have been purchased. 

SELECT PRODUCT_ID, PRODUCT_NAME, SUM(QUANTITY) AS "TOTAL PURCHASED" FROM SUPERSTORE GROUP BY PRODUCT_ID, PRODUCT_NAME;

-- Fetch the consumer information to display their customer id, name, segment, and obtain the count for number of produts they have ordered. 
SELECT CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, COUNT(PRODUCT_ID) AS "PRODUCTS ORDERED" FROM SUPERSTORE GROUP BY CUSTOMER_ID, CUSTOMER_NAME, SEGMENT;

-------------- Checking for Null values ----------------------------------------

-- Fetch all the records in superstore and see if there are any null values

SELECT * FROM SUPERSTORE:

-- Fetch all records from superstore where segment is null

SELECT * FROM SUPERSTORE WHERE SEGMENT IS NULL;

-- Fetch all records from superstore where sub_category is null

sELECT * FROM SUPERSTORE WHERE SUB_CATEGORY IS NULL;