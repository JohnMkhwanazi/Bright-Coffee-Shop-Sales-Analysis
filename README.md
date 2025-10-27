# Bright Coffee Shop Sales Analysis (BRIGHTLEARN)

### Business Insights for a New CEO using Historical Transactional Data

---

##  Project Overview
This project focuses on analyzing historical transactional data from **Bright Coffee Shop** to extract **data-driven insights** that will support the newly appointed CEO in making strategic business decisions.  

The goal was to transform raw sales data into meaningful insights that reveal revenue trends, product performance, and time-based sales patterns—ultimately guiding improvements in sales and operational efficiency.

---

## Objectives
The main objectives of this project are to:
- Identify which **products generate the highest revenue**
- Determine **peak sales hours** throughout the day
- Uncover **sales trends** across time intervals and product categories
- Provide **data-backed recommendations** to improve sales performance

---

## Dataset Description
The dataset, titled **“Bright Coffee Shop Sales”**, contains **daily transactional data** recorded at the coffee shop.  
It includes details such as:
- Product names and categories  
- Unit prices and quantities sold  
- Transaction timestamps  
- Total amounts per sale  

---

## Tools and Technologies

Category                         Tools Used 
**Data Storage & Processing**  Snowflake, Microsoft SQL Server,
**Data Visualization**          Microsoft Excel, Power BI, Canva
**Planning & Design**        Miro (Data Architecture & Flow Diagrams) |
**Presentation & Reporting**    Microsoft PowerPoint, Canva |

---

## Methodology & Steps Followed

### **1. Planning & Architecture (Miro)**
- Designed a **Data Flow Diagram** showing:  
  - Data source → ETL pipeline → Snowflake storage → Visualization tools  
- Outlined **key insights** and **core calculations**, including:  
  - `total_amount = unit_price * transaction_qty`  
  - Time-based grouping (30-minute or 1-hour intervals)  
  - Sales by product and category  

---

### **2. Data Processing (Snowflake)**
- Converted Excel data to **CSV format**
- Loaded the dataset into **Snowflake**
- Cleaned and transformed the data:
  - Fixed formatting issues (e.g., converting `'3,1'` → `3.1`)
  - Created `transaction_time_bucket` column
  - Calculated `total_amount` per transaction

---

### **3. Data Analysis & Visualization (Excel / Power BI)**
- Exported processed data to Excel
- Built **interactive dashboards** and **pivot tables** showing:
  - Revenue per product type
  - Peak time intervals
  - Best-selling and underperforming products

---

### **4. Presentation to the CEO**
- Delivered key insights using visuals and charts
- Highlighted **recommendations** for business improvement:
  - Introduce marketing campaigns during slow hours
  - Increase stock of top-selling items
  - Consider loyalty programs during peak times
- Proposed **next steps**:
  - Automate daily reporting  
  - Expand analysis to multiple store locations  

---

## Key Insights & Findings
- **Top Revenue Products:** Beverages contribute the highest share of total revenue  
- **Peak Sales Hours:** Morning and lunchtime periods show the most activity  
- **Underperforming Products:** Certain snack items have low turnover rates  
- **Recommendations:** Adjust pricing, introduce promotions, and optimize inventory levels to boost profitability  

---

## Deliverables
- **Miro Plan/Architecture Diagram**  
- **Processed Dataset (Excel/Google Sheets)** with Pivot Tables and Charts  
- **SQL Code File** for Data Transformation and Queries  
-  **PowerPoint Presentation** summarizing methodology, insights, and recommendations  

---


---

### Author
**John Mkhwanazi**  


