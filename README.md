# Amazon Sales Data Analytics

This project analyzes an Amazon sales dataset using Python, SQL,
and Power BI to extract business insights and create interactive
visualizations.

## Tasks Completed

### Task 1 — Data Cleaning & EDA

- Data cleaning and preprocessing
- Missing-value handling
- Duplicate removal
- Data-type correction
- Outlier analysis
- Exploratory data analysis
- Statistical summaries
- Univariate and bivariate analysis

### Task 2 — SQL & Data Extraction

- SQLite database
- 20+ SQL queries
- Aggregation and filtering
- Subqueries and CTEs
- Window functions
- Moving averages
- Cumulative revenue
- Query optimization
- Python-SQL integration using SQLAlchemy

### Task 3 — Data Visualization & Dashboarding

- Matplotlib visualizations
- Seaborn statistical visualizations
- Plotly interactive visualizations
- Power BI executive dashboard
- KPI cards
- Monthly sales trends
- Category analysis
- Geographic analysis
- Top product analysis
- Interactive filters
- Drill-through pages
- Tooltips
- Bookmarks and navigation
- Dashboard branding

## Key Dashboard Metrics

- Total Revenue
- Total Orders
- Total Quantity
- Average Order Value
- Monthly Revenue
- Revenue by Category
- Sales by State
- Top 10 Products



## Dashboard Preview

![Dashboard](reports/dashboard_preview.png)

## Python Visualizations

The project includes 15+ visualizations created using:

- Matplotlib
- Seaborn
- Plotly

## Interactive Plotly Dashboard

[🔗 Open Interactive HTML Dashboard](dashboards/amazon_sales_interactive.html)

## Project Structure

```text
data/
notebooks/
scripts/
sql/
dashboards/
reports/

## Task 4 – Statistical Analysis & Predictive Modeling

Task 4 focused on applying statistical analysis, time-series
techniques, and machine-learning models to the Amazon Sales dataset.

### Analysis Performed

- Descriptive statistical analysis
- Hypothesis testing using t-test, chi-square test and ANOVA
- Correlation analysis
- Time-series trend analysis
- Moving-average smoothing
- Stationarity testing using the ADF test
- Regression modeling
- Order-status classification
- Decision Tree modeling
- Model evaluation using appropriate performance metrics
- Feature importance analysis

### Important Dataset Limitations

The dataset contains only four months of monthly observations,
which limits reliable long-term time-series forecasting and
seasonality analysis.

The dataset also does not contain a unique customer identifier.
Therefore, customer-level churn, retention and customer
segmentation cannot be reliably performed from this dataset alone.

Classification was therefore performed using order delivery status
rather than customer churn.