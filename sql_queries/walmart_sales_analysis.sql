--What is the total weekly sales across all stores?
SELECT SUM(weekly_sales) AS total_sales
FROM Walmart_dasboard

--Which store has the highest total weekly sales?
SELECT store, SUM(weekly_sales) AS total_sales
FROM Walmart_dasboard
GROUP BY store
ORDER BY total_sales DESC
LIMIT 1;

--What is the average weekly sales per store?
SELECT store, AVG(weekly_sales) AS average_weekly_sales
FROM Walmart_dasboard
GROUP BY store
ORDER BY average_weekly_sales DESC;

--Compare average weekly sales on holiday weeks vs non-holiday weeks.
SELECT 
    holiday_flag,
    AVG(weekly_sales) AS avg_sales
FROM Walmart_dasboard
GROUP BY holiday_flag;

--Which store performed best during holiday weeks (highest holiday sales)?
SELECT store, SUM(weekly_sales) AS holiday_sales
FROM Walmart_dasboard
WHERE holiday_flag = 1
GROUP BY store
ORDER BY holiday_sales DESC
LIMIT 1;

--Identify the week with the highest weekly sales for each store.
SELECT DISTINCT ON (store)
    store,
    date,
    weekly_sales
FROM Walmart_dasboard
ORDER BY store, weekly_sales DESC;

--What is the relationship between temperature and weekly sales (correlation analysis)?
SELECT CORR(temperature, weekly_sales) AS temp_sales_correlation
FROM Walmart_dasboard;

--Does higher fuel price affect sales? (Fuel price vs weekly sales analysis)
SELECT CORR(fuel_price, weekly_sales) AS fuel_sales_correlation
FROM Walmart_dasboard;

--What is the average unemployment rate for each store?
SELECT store, AVG(unemployment) AS avg_unemployment
FROM Walmart_dasboard
GROUP BY store
ORDER BY avg_unemployment DESC;

--How does CPI influence weekly sales? (Sales variation by CPI ranges)
SELECT 
    CASE 
        WHEN cpi < 150 THEN 'Low CPI'
        WHEN cpi BETWEEN 150 AND 200 THEN 'Medium CPI'
        ELSE 'High CPI'
    END AS cpi_range,
    AVG(weekly_sales) AS avg_sales
FROM Walmart_dasboard
GROUP BY cpi_range;

--Find the top 10 highest weekly sales records across all stores.
SELECT * FROM Walmart_dasboard
     ORDER BY weekly_sales DESC
LIMIT 10;

--Which store shows the highest sales growth over time?
SELECT 
    store,
    (MAX(weekly_sales) - MIN(weekly_sales)) AS sales_growth
FROM Walmart_dasboard
GROUP BY store
ORDER BY sales_growth DESC;

--Identify the stores with average sales below the overall average (low performing stores).
WITH overall AS (
    SELECT AVG(weekly_sales) AS overall_avg FROM Walmart_dasboard
)
SELECT store, AVG(weekly_sales) AS store_avg
FROM Walmart_dasboard, overall
GROUP BY store, overall_avg
HAVING AVG(weekly_sales) < overall.overall_avg;

--What percentage of total yearly sales comes from holiday weeks?
WITH yearly AS (
    SELECT SUM(weekly_sales) AS total_sales FROM Walmart_dasboard
),
holiday AS (
    SELECT SUM(weekly_sales) AS holiday_sales 
    FROM Walmart_dasboard 
    WHERE holiday_flag = 1
)
SELECT 
    (holiday.holiday_sales / yearly.total_sales) * 100 AS holiday_sales_percentage
FROM holiday, yearly;
