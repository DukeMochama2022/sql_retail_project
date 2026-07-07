-- Create TABLE
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales
            (
                transaction_id INT PRIMARY KEY,	
                sale_date DATE,	 
                sale_time TIME,	
                customer_id	INT,
                gender	VARCHAR(15),
                age	INT,
                category VARCHAR(15),	
                quantity	INT,
                price_per_unit FLOAT,	
                cogs	FLOAT,
                total_sale FLOAT
            );

SELECT * FROM retail_sales
LIMIT 10

-- count all records in the database
SELECT COUNT(*) FROM retail_sales;

-- Checking null values
SELECT * FROM retail_sales
WHERE transaction_id IS NULL

	OR sale_date IS NULL
	OR sale_time IS NULL
	OR customer_id IS NULL
	OR gender IS NULL
	OR age IS NULL
	OR category IS NULL
	OR quantity IS NULL
	OR price_per_unit IS NULL
	OR cogs IS NULL
	OR total_sale IS NULL;


-- data cleaning
DELETE FROM retail_sales
	WHERE transaction_id IS NULL
		OR sale_date IS NULL
		OR sale_time IS NULL
		OR customer_id IS NULL
		OR gender IS NULL
		OR age IS NULL
		OR category IS NULL
		OR quantity IS NULL
		OR price_per_unit IS NULL
		OR cogs IS NULL
		OR total_sale IS NULL;

-- Data exploration

-- How many sales we have ?
SELECT COUNT(*) AS total_sales 
FROM retail_sales;

-- How many unique Customers we have ?
SELECT COUNT(DISTINCT customer_id) AS no_of_customers 
FROM retail_sales;

-- How many unique Categories
SELECT DISTINCT category
FROM retail_sales;

-- Data Analysis & Key Business Questions

-- My Analysis & Findings
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)



