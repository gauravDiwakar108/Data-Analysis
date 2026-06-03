# Customer Shopping Behavior Analysis

## 📌 Overview

This project focuses on analyzing customer shopping behavior using transactional retail data. The objective was to identify customer purchasing patterns, product trends, subscription behavior, and revenue insights through data cleaning, exploratory data analysis (EDA), SQL analysis, and interactive dashboarding.

The project demonstrates an end-to-end Data Analytics workflow using Python, SQL, and Power BI.

---

## 📂 Dataset

The dataset contains customer shopping transaction records across multiple product categories.

### Dataset Details

* Total Records: 3,900
* Total Columns: 18
* Features Included:

  * Customer demographics
  * Purchase details
  * Subscription information
  * Discounts and promo usage
  * Product ratings
  * Shipping preferences

### Key Columns

* Age
* Gender
* Category
* Item Purchased
* Purchase Amount
* Subscription Status
* Discount Applied
* Review Rating
* Shipping Type

---

## 🛠️ Tools & Technologies Used

### Programming & Analysis

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn

### Database & Querying

* PostgreSQL
* MySQL
* SQL Server

### Visualization & Reporting

* Power BI
* Gamma (for presentation creation)

---

## 🔍 Project Workflow

### 1. Data Loading

* Imported dataset using Pandas
* Checked dataset structure and data types
* Performed initial exploration using:

  * `df.info()`
  * `df.describe()`

### 2. Data Cleaning

* Handled missing values in the `Review Rating` column
* Renamed columns using snake_case format
* Removed redundant columns
* Checked for data consistency and duplicates

### 3. Feature Engineering

Created additional features such as:

* `age_group`
* `purchase_frequency_days`

### 4. Exploratory Data Analysis (EDA)

Performed analysis on:

* Customer demographics
* Revenue distribution
* Product categories
* Subscription trends
* Discount usage
* Shipping preferences

### 5. SQL Analysis

Executed business-focused SQL queries including:

* Revenue by gender
* High-spending discount users
* Top-rated products
* Subscription vs non-subscription revenue
* Customer segmentation
* Revenue by age group
* Top products per category

### 6. Dashboard Development

Built an interactive Power BI dashboard to visualize:

* Revenue trends
* Customer segmentation
* Product performance
* Subscription insights
* Shipping analysis

### 7. Reporting & Presentation

* Created a detailed project report
* Developed a professional presentation using Gamma

---

## 📊 Dashboard Highlights

The Power BI dashboard includes:

* KPI cards
* Revenue analysis charts
* Customer segmentation visuals
* Product category insights
* Interactive filters and slicers

---

## 📈 Key Insights

* Loyal customers contribute significantly to total revenue
* Subscribers show higher average spending
* Certain products heavily depend on discounts for sales
* Express shipping customers tend to spend more
* High-rated products generate consistent purchases

---

## 💡 Business Recommendations

* Improve loyalty programs for repeat customers
* Promote subscription benefits to increase retention
* Optimize discount strategies
* Focus marketing on high-value customer segments
* Highlight top-rated products in campaigns

---

## 🚀 How to Run the Project

### 1. Clone the Repository

```bash
git clone <your-repository-link>
```

### 2. Install Required Libraries

```bash
pip install pandas numpy matplotlib seaborn sqlalchemy psycopg2
```

### 3. Run Python Analysis

```bash
python analysis.py
```

### 4. Connect SQL Database

* Import cleaned dataset into PostgreSQL/MySQL/SQL Server
* Run SQL scripts for business analysis

### 5. Open Power BI Dashboard

* Open `.pbix` file in Power BI Desktop

---

## 🎯 Project Outcome

This project showcases practical skills in:

* Data Cleaning
* Exploratory Data Analysis
* SQL Querying
* Dashboard Development
* Business Insight Generation
* End-to-End Data Analytics Workflow

---

## 👤 Author

Gaurav Diwakar
Data Analyst | Python | SQL | Power BI
