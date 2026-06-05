# Bank-Loan-Analysis
End-to-end EDA on 38,576 bank loan applications using Python  — uncovering default risk patterns, funding trends, and  regional insights to support credit decision-making.


# 🏦 Bank Loan Analysis

![Python](https://img.shields.io/badge/Python-3.x-blue)
![Pandas](https://img.shields.io/badge/Pandas-EDA-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## 📌 Problem Statement

Banks issue thousands of loans every month — but not all 
borrowers repay. Identifying patterns in loan defaults, 
funding amounts, and borrower profiles is critical for 
making smarter credit decisions and reducing financial risk.

This project analyses 38,576 real loan applications to 
answer one core business question:

> **What factors drive loan defaults — and where should 
> the bank focus to reduce risk?**

---

## 📊 Dataset Overview

| Detail | Info |
|---|---|
| Source | Kaggle — Bank Loan Dataset |
| Rows | 38,576 loan applications |
| Columns | 24 features |
| Period | January 2021 – December 2021 |
| Key Fields | Loan status, purpose, grade, income, DTI, state |

---

## 🎯 Business Questions Answered

1. What is the overall good loan vs bad loan ratio?
2. Which states have the highest loan funding and applications?
3. How does employment length affect loan amounts?
4. Which loan purposes drive the highest default rates?
5. What are the monthly trends in loan funding and repayments?
6. How does home ownership impact loan distribution?
7. What is the average interest rate and debt-to-income ratio?

---

## 🔧 Tools & Libraries

| Tool | Purpose |
|---|---|
| Python | Core programming language |
| Pandas | Data manipulation and analysis |
| NumPy | Numerical computations |
| Matplotlib | Static visualizations |
| Seaborn | Statistical charts |
| Plotly Express | Interactive treemap charts |
| Jupyter Notebook | Development environment |

---

## 🔍 Analysis Workflow

### 1. Data Loading & Exploration
- Loaded 38,576 records with 24 columns
- Inspected data types, null values, and statistical summary
- Identified key fields for analysis

### 2. Data Cleaning
- Checked and handled missing values
- Verified data types — datetime columns properly parsed
- Confirmed no duplicate records

### 3. KPI Metrics Calculated
- Total Loan Applications: **38,576**
- MTD Applications (Dec 2021): **4,314**
- Total Funded Amount: **$435.76M**
- MTD Funded Amount: **$53.98M**
- Total Amount Received: **$473.07M**
- Average Interest Rate: **12.05%**
- Average DTI Ratio: **13.33%**

### 4. Good Loan vs Bad Loan Analysis
- Good Loans (Fully Paid + Current): **86.18%** — $370.22M funded
- Bad Loans (Charged Off): **13.82%** — $65.53M funded
- Recovery gap: Bad loans received only $37.28M against $65.53M funded

### 5. Trend Analysis
- Monthly loan applications grew from 2,332 (Jan) to 4,314 (Dec)
- Funded amount grew from $25.03M to $53.98M across 12 months
- Consistent upward trend indicating growing loan demand

### 6. Regional Analysis
- California leads with $78.48M funded and 6,894 applications
- New York second at $42.07M funded
- Smallest markets: Maine and Iowa with under $10K funded

### 7. Purpose Analysis
- Debt Consolidation dominates at $232.46M — 53% of total funding
- Credit Card second at $58.89M
- Renewable Energy lowest at $0.85M

### 8. Employment Length Analysis
- 10+ year employees receive highest funding: $116,116K
- Shorter tenure applicants (<1 year) still significant at $44,211K

### 9. Home Ownership Analysis
- Mortgage holders receive the largest share of funded loans
- Visualized using interactive Plotly treemap

---

## 💡 Key Business Insights

**1. Bad loan rate is manageable but costly**
13.82% default rate translates to $65.53M in bad loans — 
with only $37.28M recovered. A $28M+ recovery gap signals 
need for stricter credit checks on high-risk segments.

**2. Debt consolidation is the biggest risk concentration**
Over 53% of all loans go to debt consolidation. If default 
rates in this segment increase even slightly, the impact 
on the portfolio is significant.

**3. Loan demand is accelerating**
Applications grew 85% from January to December 2021. 
Rapid growth without proportional risk assessment 
improvement could increase future default rates.

**4. California and New York dominate — but so does risk**
Top states by funding are also top states by application 
volume. Regional default patterns should be monitored 
separately for these high-concentration markets.

**5. Long-tenure employees are safer borrowers**
10+ year employees show the highest funded amounts, 
suggesting lenders trust job stability. This metric 
could be weighted more heavily in credit scoring.

---

## 📈 Visualizations Included

- ✅ Monthly trend — funded amount, received amount, applications
- ✅ Regional bar charts — state-wise funding and applications
- ✅ Employment length — funded and received amounts
- ✅ Loan purpose — funded and received amounts
- ✅ Loan term — donut charts (36 vs 60 months)
- ✅ Home ownership — interactive Plotly treemap

---

## ✅ Conclusion

This analysis reveals that while the bank maintains a healthy 
86.18% good loan rate, the $28M+ recovery gap in bad loans 
and heavy concentration in debt consolidation represent 
significant risk areas. 

With loan applications growing 85% in 2021, the bank needs 
data-driven credit scoring improvements — particularly for 
shorter-tenure employees and high-DTI borrowers — to sustain 
portfolio health as volume scales.

---

## 🚀 How to Run

```bash
# Clone the repository
git clone https://github.com/yourusername/Bank-Loan-Analysis.git

# Install dependencies
pip install pandas numpy matplotlib seaborn plotly openpyxl

# Open notebook
jupyter notebook Bank_Loan_Analysis.ipynb
```

---

## 👤 Author

**Santhosh Kumar D**  
Data Analyst | SQL • Tableau • Power BI • Python  
📧 santhoshsword2k@gmail.com  
🔗[LinkedIn](https://www.linkedin.com/in/santhosh-kumar-sk54/)

---
