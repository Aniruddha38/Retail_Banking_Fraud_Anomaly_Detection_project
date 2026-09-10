# Retail-Banking-Fraud-Anomaly_Detection_project
# Retail Banking Fraud & Anomaly Detection

# Project Overview
This project automates credit card and UPI fraud detection for a regional bank. It identifies suspicious transactions using Python statistical anomalies (Z-Score), stores flagged records in PostgreSQL, and visualizes fraud hotspots and hourly spikes in Power BI.

# Tech Stack
- **Language:** Python (Pandas, NumPy, Scipy)
- **Database:** PostgreSQL / SQL
- **BI Tool:** Power BI Desktop

# Project Files Structure
- `fraud_analysis.ipynb` - Contains Python data cleaning, feature engineering, and Z-Score logic.
- `database_queries.sql` - PostgreSQL script to verify records and transaction counts.
- `fraud_dashboard.pbix` - Power BI visualization dashboard showing risk metrics and hourly spikes.

#  Key Features Analyzed
- **Transaction Velocity:** Tracks rapid consecutive card/UPI swipes within short timeframes.
- **Spending Behavior:** Uses statistical Z-scores to flag unusually high purchase amounts.
-

#  Dataset Link
The dataset used in this project is too large for GitHub. You can download the raw dataset from [Kaggle Credit Card Fraud Dataset](https://kaggle.com) or [[Real dataset Link In Kaggle](https://www.kaggle.com/datasets/hnytfo/credit-card-transactions-with-fraud-detection)].
