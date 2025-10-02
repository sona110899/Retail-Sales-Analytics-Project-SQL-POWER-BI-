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

CSV files used in this project (placed in `datasets/csv-files/`):

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

* **KPIs:** Total Sales, Orders, Customers, Products, Avg Price
* **Visuals:**

  * Sales trend by year & month
  * Category-wise and country-wise revenue distribution
  * Top 10 customers and top 5 products by sales
  * Customer demographics (gender, country segmentation)
* **Filters & Interactivity:** Dynamic slicers for time period, category, and region

---

## 🛠️ Tech Stack

* **SQL Server (T-SQL)** – Data modeling & analysis
* **CSV Data Sources** – Raw datasets
* **Power BI** – Dashboard & visualization
* **Star Schema Modeling**

---

## 📌 How to Run

1. Clone the repository
2. Run `retail-sales-analytics.sql` in SQL Server to create schema & load data
3. Update file paths for CSVs in `BULK INSERT` queries
4. Open the **Power BI file (`retail-sales-analytics.pbix`)** to explore the dashboard

---

## 📜 Key Learnings

* Designing a **retail analytics database schema**
* Implementing ETL with **bulk data loads**
* Writing **advanced SQL queries** (window functions, ranking, segmentation)
* Creating **Power BI dashboards** for business reporting and insights
* End-to-end **Retail Sales Analytics pipeline** from raw data to visualization

---

## 📧 Contact

👤 **Sona Singh**
📩 [LinkedIn](#) 
