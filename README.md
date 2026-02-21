**Economic Value Analysis**

An end-to-end data analytics project that transforms raw Excel data into meaningful economics insights using Python, SQL, and Power BI.
This project demonstrates a complete data workflow, from extraction and cleaning to database analysis and interactive dashboard visualization.

**Project Overview**
The objective of this project is to analyze Global Market Capitalization trends, regional distribution, and economic growth patterns across countries and continents.
The workflow includes:
1. Excel Data Extraction
2. Data Cleaning using Python
3. Import Cleaned Data into SQL for Analysis
4. Data Visualization using Power BI

**Tech Stack**
1. Microsoft Excel – Raw data source
2. Python (Pandas, NumPy) – Data cleaning & transformation
3. MySQL – Data storage & analytical queries
4. Power BI – Interactive dashboard visualization
5. VS Code & Jupyter Notebook – Development environment

**Project Workflow**
1️. Excel Data Extraction
  - Imported raw dataset from Kaggle
  - Verified column structure and data types
  - Prepared dataset for transformation

2. Data Cleaning (Python)
   - Performed the following steps:
       - Standardized column names
       - Converted data types
       - Handled missing values
       - Remove non-country data (possible of redundancy data)
       - Add new column (continent_)
       - Exported cleaned dataset as CSV
         
3. SQL Queries
   - Imported cleaned CSV into SQL
   - Wrote queries to answer analysis questions such as:
     - Total market capitalization by year
     - Market cap by country
     - Market cap by continent
     - Growth trends over time
    
4. Power BI Dashboard
   - Built interactive dashboards including:
     - Executive Summary
       - High-level status of the world market.
     - Regional Analysis
       - Compare continents and economic unions.
     - Growth Trends
       - Identify which markets are emerging or declining.

**Key Insights**
   - North America dominates global market capitalization.
   - Asia shows strong long-term growth trends.
   - Market capitalization exhibits cyclical volatility.
   - Post-2000 period shows significant acceleration in global market growth.

**Learning Outcomes**
This project demonstrates:
- End-to-end data pipeline development
- Real-world data cleaning techniques
- SQL analytical querying skills
- Business intelligence dashboard development
- Data storytelling for decision-making
