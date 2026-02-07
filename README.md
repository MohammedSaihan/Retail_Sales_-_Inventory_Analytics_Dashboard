# Retail Sales & Customer Analytics (Jeddah-Focused)

## 📌 Project Summary

This project demonstrates an end-to-end retail analytics solution designed to support business and management decision-making. Using SQL and Power BI, transactional retail data was analyzed to uncover sales trends, customer behavior, product performance, and growth insights.

The project is intentionally aligned with real-world retail challenges commonly faced by businesses in **Jeddah, Saudi Arabia**, making it highly relevant for Data Analyst, MIS Analyst, and Reporting Analyst roles.

---

## 🎯 Business Objectives

* Monitor overall sales performance and revenue trends
* Identify top and low-performing product categories
* Segment customers based on value and demographics
* Track key performance indicators (KPIs) for management reporting
* Enable data-driven decision-making through interactive dashboards

---

## 🗂️ Dataset Overview

The dataset represents transactional retail sales data with customer and product attributes.

**Key Columns:**

* `transaction_id` – Unique transaction identifier
* `date` – Transaction date
* `customer_id` – Unique customer identifier
* `gender`, `age`, `age_group` – Customer demographics
* `product_category` – Product classification
* `quantity`, `price_per_unit` – Sales metrics

**Derived Metric:**

* **Revenue = Quantity × Price per Unit**

---

## 🛠 Tools & Technologies

* **SQL** – Data extraction, aggregation, window functions, and analysis
* **Power BI** – Interactive dashboards and KPI visualization
* **Excel** – Data validation and exploratory analysis
* **GitHub** – Version control and project documentation

---

## 🔄 Data Preparation & Processing

* Validated data types and ensured consistency across columns
* Created calculated fields such as revenue and average order value (AOV)
* Aggregated data at monthly, product, and customer levels for reporting
* Verified SQL outputs using Excel summaries to ensure accuracy

---

## 📊 Key KPIs & Metrics

* Total Revenue
* Total Transactions
* Total Units Sold
* Average Order Value (AOV)
* Month-on-Month Revenue Growth
* Revenue Contribution by Product Category

---

## 🔍 Analysis Performed

### 1. Sales Trend Analysis

* Analyzed monthly revenue trends to identify growth patterns and seasonality
* Calculated month-on-month growth using SQL window functions (LAG)

### 2. Product Performance Analysis

* Evaluated revenue contribution by product category
* Applied the **80/20 (Pareto) principle** to identify high-impact categories
* Highlighted low-performing categories for optimization opportunities

### 3. Customer & Demographic Analysis

* Segmented customers into High, Medium, and Low value groups based on spending
* Identified top revenue-generating customers
* Analyzed purchasing behavior by gender and age group

---

## 📈 Dashboard Design (Power BI)

The Power BI dashboard is structured into the following pages:

* **Executive Overview:** High-level KPIs and monthly revenue trends
* **Product Performance:** Top and low-performing product categories
* **Customer Analytics:** Customer segmentation and value analysis
* **Demographic Insights:** Revenue by age group and gender
* **Growth Analysis:** Month-on-month revenue changes and trends

Interactive slicers enable filtering by date, product category, gender, and age group.

---

## 💡 Key Insights

* A small number of product categories generate the majority of total revenue
* High-value customers contribute a significant portion of overall sales
* Certain age groups show higher purchasing power, indicating targeted marketing opportunities
* Revenue trends reveal clear periods of growth and slowdown useful for planning

---

## 📈 Business Impact

This analysis enables management to:

* Prioritize inventory and promotions for high-performing product categories
* Improve customer retention strategies by focusing on high-value segments
* Monitor business performance using reliable KPIs
* Make faster and more informed strategic decisions

---

## 🚀 Future Enhancements

* Integrate store-level and inventory stock data
* Add sales forecasting and demand prediction models
* Incorporate profitability and cost-based analysis
* Connect real-time or near real-time data sources

---

## ✅ Conclusion

This project showcases the practical application of SQL and Power BI to solve real-world retail analytics problems. It highlights the ability to transform raw transactional data into meaningful, business-ready insights, making it well-suited for analytics roles in retail-driven markets such as Saudi Arabia.
