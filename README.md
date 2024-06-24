# Internet Sales Dashboard

## Project Overview

This project aims to transition from static sales reports to dynamic, interactive visual dashboards. The focus is on analyzing how much we have sold of different products, to which clients, and how sales have trended over time. Additionally, the project includes budget comparisons to evaluate performance against targets.

## Data Model

The project uses a star schema with the following tables:

### Fact Tables
- **FactSales**: Contains sales data with metrics like sales amount, quantity, etc.
- **FactBudget**: Contains budget data to compare against actual sales.

### Dimension Tables
- **DateDimension**: Contains date-related attributes to enable time-based analysis.
- **CustomerDimension**: Contains customer-related attributes to segment and analyze sales data by different customer groups.
- **ProductDimension**: Contains product-related attributes to analyze sales performance by product categories.

## Process

1. **Data Extraction**: 
   - Useful columns were selected from the source tables using MSSQL queries.
   - The data was extracted and pre-processed to ensure it is clean and relevant for analysis.

2. **Data Import**: 
   - The results from the MSSQL queries were imported into Power BI to minimize the processing load on Power BI.

3. **Data Modeling**:
   - The dimension and fact tables were connected in Power BI using dimension modeling techniques to form a star schema.

![image](https://github.com/vidyamai/Internet-Sales-Insights/assets/84960322/149ac564-5287-46d4-9818-9b83540567ac)



4. **Dashboard Creation**:
   - A comprehensive sales overview dashboard was created in Power BI.
   - The dashboard includes key performance indicators (KPIs), donut charts, and line charts to provide proper insights into sales performance and trends.

![image](https://github.com/vidyamai/Internet-Sales-Insights/assets/84960322/a2fecfca-5d67-42d9-8294-2228ece546c0)


## Features

- **Interactive Dashboards**: Users can filter data by different product categories, client segments, and time periods.
- **Real-Time Updates**: Dashboards reflect real-time sales data for timely decision-making.
- **Performance Comparison**: Visual comparisons of actual sales against budgeted targets for 2021.
- **Historical Trends**: Analysis of sales data over the past four years (from 2019).




