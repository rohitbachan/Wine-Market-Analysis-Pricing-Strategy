# 🍷 Wine Market Analysis

## 📊 Project Overview

The **Wine Market Analysis** project focuses on analyzing wine data to uncover insights about **wine quality, pricing, value, regions, varieties, and price segments**.

The project follows a complete data analytics workflow:

**Python → PostgreSQL → Power BI**

Raw wine data was cleaned and transformed using Python, analyzed using SQL in PostgreSQL, and presented through an interactive Power BI dashboard.

---

## 🎯 Project Objectives

* Analyze wine quality based on rating points.
* Understand the relationship between **price and wine quality**.
* Identify high-performing wine-producing regions.
* Analyze the most popular wine varieties.
* Segment wines into **Low, Medium, and Premium** price categories.
* Identify wines that provide better value for their price.
* Build an interactive dashboard for business-oriented insights.

---

## 🛠️ Tools & Technologies

| Tool                  | Purpose                                 |
| ------------------    | -------------------------------------- |
| 🐍 Python            | Data cleaning and preprocessing         |
| 🐼 Pandas            | Data manipulation and transformation    |
| 🗄️ PostgreSQL        | SQL analysis and business queries       |
| 📊 Power BI          | Interactive dashboard and visualization |
| 📁 CSV               | Dataset storage                         |
| 💻 VS Code           | Development environment                 |

---

## 🔄 Project Workflow

```text
Raw Dataset
     ↓
Python Data Cleaning
     ↓
Feature Engineering
     ↓
Cleaned CSV Dataset
     ↓
PostgreSQL
     ↓
SQL Business Analysis
     ↓
Power BI
     ↓
Interactive Wine Market Dashboard
```

---

## 🧹 Data Cleaning & Preparation

The dataset was cleaned and prepared using Python.

Major preprocessing steps included:

* Handling missing values
* Checking duplicate records
* Standardizing data
* Validating data types
* Creating a **Price Segment** column
* Creating a **Value Score** column
* Validating the final dataset before importing it into PostgreSQL

### Price Segmentation

Wines were divided into three price categories:

| Price Segment | Price Range |
| ------------- | ----------: |
| Low           |       ≤ $17 |
| Medium        |   $18 – $42 |
| Premium       |       > $42 |

---

## 📐 Key Metrics

The project analyzes the following important metrics:

* **Average Wine Rating**
* **Average Price**
* **Wine Count**
* **Average Value Score**
* **Region Performance**
* **Variety Performance**
* **Price Segment Performance**

### Value Score

A value score was created to compare wine quality relative to price.

```text
Value Score = Points / Price
```

A higher value score indicates relatively better rating points for the price paid.

---

## 🗄️ SQL Analysis

PostgreSQL was used to answer key business questions, including:

1. Which regions have the highest average wine ratings?
2. Which regions contain the largest number of wines?
3. Which wine varieties are most common?
4. How does wine quality vary across price segments?
5. Which price segment provides the best value?

SQL concepts used include:

* `GROUP BY`
* Aggregate functions
* `ORDER BY`
* `CASE`
* CTEs
* Filtering
* Ranking
* Business-oriented analytical queries

---

## 📊 Power BI Dashboard

The Power BI dashboard provides an interactive view of the wine market.

### Dashboard Features

* 🍷 Wine Market Analysis overview
* 📌 KPI cards
* 🌍 Province/Region analysis
* 🍇 Variety analysis
* 💰 Price analysis
* ⭐ Rating analysis
* 📈 Price segment analysis
* 🎯 Value analysis
* 🔎 Interactive slicers

### Interactive Filters

Users can explore the data using filters such as:

* Variety
* Province
* Country
* Price Segment
* Points

---

## 🔍 Key Insights

### 🍷 Price vs Quality

Higher-priced wines generally have higher average ratings, indicating a positive relationship between price and perceived wine quality.

However, higher price does **not necessarily mean better value**.

### 💰 Best Value Segment

The **Low Price Segment** contains the largest number of wines and has the highest average value score.

### ⭐ Premium Wines

Premium wines have the highest average rating among the three price segments, but their average value score is considerably lower than the Low and Medium segments.

### 🌍 Regional Performance

Regions such as **Wachau, England, Kamptal, Rheingau, Kremstal, and Wagram** show strong average rating performance.

### 🍇 Popular Varieties

The most frequently represented varieties include:

* Pinot Noir
* Chardonnay
* Cabernet Sauvignon
* Red Blend
* Bordeaux-style Red Blend
* Riesling

---

## 📈 Price Segment Summary

| Segment | Wine Count | Avg. Rating | Avg. Price | Avg. Value Score |
| ------- | ---------: | ----------: | ---------: | ---------------: |
| Low     |     82,451 |       87.37 |     $19.69 |             4.97 |
| Medium  |     27,746 |       89.59 |     $40.56 |             2.25 |
| Premium |     19,774 |       91.35 |     $88.73 |             1.24 |

---

## 📂 Project Structure

```text
Wine-Market-Analysis/
│
├── data/
│   └── cleaned_wine_dataset.csv
│
├── python/
│   └── data_cleaning.ipynb
│
├── sql/
│   └── wine_analysis.sql
│
├── powerbi/
│   └── Wine_Market_Analysis.pbix
│
├── images/
│   └── dashboard.png
│
└── README.md
```

---

## 🚀 How to Use This Project

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/wine-market-analysis.git
```

### 2. Open the Python Notebook

Open the notebook in **Jupyter Notebook** or **VS Code** and run the data-cleaning workflow.

### 3. Load Data into PostgreSQL

Create a PostgreSQL database and import the cleaned CSV dataset.

### 4. Run SQL Analysis

Execute the SQL queries provided in the `sql` folder.

### 5. Open Power BI

Open the `.pbix` file in **Power BI Desktop** to explore the interactive dashboard.

---

## 📌 Skills Demonstrated

* Data Cleaning
* Data Preprocessing
* Exploratory Data Analysis
* Python
* Pandas
* SQL
* PostgreSQL
* Data Transformation
* Feature Engineering
* Business Analysis
* Data Visualization
* Power BI
* Dashboard Development
* KPI Development
* Analytical Thinking


## 👨‍💻 Author

**Rohit Bachan Prasad**

Aspiring Data Analyst

**Skills:** Python | SQL | PostgreSQL | Excel | Power BI

---

## ⭐ Project Outcome

This project demonstrates an end-to-end **Data Analytics workflow**, from raw data cleaning and SQL-based analysis to interactive business intelligence reporting in Power BI.
