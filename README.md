📊 Walmart Sales SQL Analysis Project

This project analyzes Walmart’s weekly sales performance using SQL.
The dataset includes store-wise sales, temperature, CPI, unemployment, fuel prices, and holiday indicators.
The goal is to understand sales patterns, find insights, and evaluate factors affecting performance.

🔍 Project Objectives

Analyze total, average, and store-wise sales performance

Study the effects of holidays on sales

Understand how temperature, fuel price, CPI, and unemployment influence sales

Identify highest performing stores and weeks

Generate actionable insights for business decisions

📁 Dataset Description
Column Name	Description
Store	Store ID
Date	Sales Week Date
Weekly_Sales	Weekly Revenue for the Store
Holiday_Flag	Whether week included a holiday (1 = Yes, 0 = No)
Temperature	Temperature in region
Fuel_Price	Fuel Price at the time
CPI	Consumer Price Index
Unemployment	Unemployment Rate
🧠 Key Business Questions Answered

Below are the 15 questions and their PostgreSQL queries (already provided earlier):

Total weekly sales across all stores

Store with highest total sales

Average weekly sales per store

Holiday vs non-holiday sales comparison

Best performing store during holidays

Week with highest sales per store

Temperature vs sales correlation

Fuel price vs sales correlation

Average unemployment per store

CPI impact on sales

Top 10 highest weekly sales

Month-wise total sales

Store with highest sales growth

Low-performing stores (below average)

Percentage of yearly sales from holiday weeks

📈 Key Insights
⭐ 1. Sales are significantly higher during holiday weeks

Holidays contribute a major portion of annual revenue.

⭐ 2. Certain stores consistently outperform others

Top 3 stores generate the highest revenue year-round.

⭐ 3. Temperature has a mild relation with weekly sales

Warm weather slightly improves customer footfall.

⭐ 4. Fuel price does not drastically affect sales

But slight dependency exists in a few regions.

⭐ 5. CPI and unemployment strongly affect weekly sales

Higher CPI and unemployment show a drop in spending power.

⭐ 6. Peak sales occur during seasonal and holiday periods

February, November, and December are top performing months.

🧮 KPIs Used in the Project
KPI	Meaning
Total Sales	Total revenue across all stores
Average Sales per Store	Operational performance metric
Holiday Sales %	Measures effect of holiday seasons
Correlation Matrix	Shows how external factors affect sales
Top Stores by Revenue	Identifying best-performing units
Month-over-Month Growth	Trend analysis of revenue
🗂️ Project Structure
📦 Walmart-Sales-SQL-Project
│
├── 📝 README.md
├── 📁 data
│     └── Walmart_Sales.csv
└── 📁 sql_queries
      └── walmart_sales_analysis.sql

🚀 How to Run the Queries

Install PostgreSQL

Create a database

Import the dataset

Run the SQL queries in pgAdmin / DBeaver / VS Code
