# 🛍️ Retail Sales Analytics Project(SQL+POWER BI)

This project demonstrates how to design, build, and analyze a **Retail Sales Analytics database** using SQL Server, and visualize insights with **Power BI**.
It covers **data modeling, ETL, business analysis, and dashboarding** to deliver meaningful insights from retail sales and customer data.

---

## 🚀 Project Overview

* **Database:** `RetailSalesAnalyticsProject`
* **Schema:** `sales` (Star Schema with dimension & fact tables)
* **ETL:** Bulk insert from CSV datasets
* **Analytics:** Business KPIs, time-series analysis, customer segmentation, product/category insights
* **Visualization:** Interactive **Power BI dashboard** for reporting and business insights

This project simulates a real-world **retail analytics workflow** used in BI teams.

---

## 🏗️ Database Design

The project follows a **Star Schema**:

* **Dimension Tables**

  * `sales.dim_customers` → Customer demographics
  * `sales.dim_products` → Product details & categories

* **Fact Table**

  * `sales.fact_sales` → Sales transactions with measures like sales amount, quantity, and price

---

## 📂 Dataset

CSV files used in this project (placed in `Datasets/CsvFiles`):

* `sales.dim_customers.csv`
* `sales.dim_products.csv`
* `sales.fact_sales.csv`

---

## 🔄 ETL Process

* Data loaded using `BULK INSERT` from CSV files
* Tables truncated before each load to maintain data consistency
* Stored in **sales schema** for reporting and analytics

---

## 📈 Business Analysis

### 🔹 SQL Queries

* **Descriptive insights**

  * Total Sales, Orders, Customers, Products

* **Performance metrics**

  * Revenue, orders, top/worst products, top customers

* **Trend analysis**

  * Sales over time, YoY/MoM growth, cumulative totals

* **Segmentation**

  * Customer spending (VIP/Regular/New)
  * Product cost ranges

* **Part-to-whole**

  * Revenue contribution by category & country

### 🔹 Power BI Dashboard

* **KPIs:** Total Sales, Orders, Customers, Products,Quantity, Avg Price
* **Visuals:**

  * Sales Over Time – Line chart with Total Sales and Running Sales (YTD)
  * Total Customers Over Time – Line chart
  * Customer Segment Distribution – Pie chart
  * Customers By Country – Map visual
  * Products By Category-Treemap
  * Average Cost By Category-Column chart
  * Category By revenu-Column chart
  * Top 5 Products and Top 10 Customers By Revenue-Column chart
  * Distributions of  sold items across Countries -Donut chart

* **Filters & Interactivity:** Dynamic slicers for time period, category, loaction and gender

---

## 🛠️ Tech Stack

* **SQL Server** – Data modeling & analysis
* **CSV Data Sources** – Raw datasets
* **Power BI** – Dashboard & visualization
* **Star Schema Modeling**

---

## 📌 How to Run

1. Clone the repository.
2. Run `00_Create_Database.sql` in SQL Server to create the database schema and load initial data,Path:Scripts/00_Create_Database.sql
3. Update file paths for CSVs in `BULK INSERT` queries if required.
4. After creating the database, run the other scripts present in the `Scripts` folder to perform data analysis.
5. Open the **Power BI file (`Sales Opportunity Insights Dashboard.pbix`)** to explore the dashboard.


---

## 📜 Key Learnings

* Designing a **sales schema**
* Implementing ETL with **bulk data loads**
* Writing **advanced SQL queries** (window functions, ranking, segmentation)
* Creating **Power BI dashboards** for business reporting and insights
* End-to-end **Retail Sales Analytics Project** from raw data to visualization

---

## 📧 Contact

👤 **Sona Singh**
📩 [LinkedIn](https://www.linkedin.com/in/singhsonaa/)
