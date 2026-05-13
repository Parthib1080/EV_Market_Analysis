# ⚡ EV Market Analytics — 2026

> **Using global electric vehicle data to identify which segments, brands, and product features drive sales, revenue, and customer satisfaction.**

---

## 📌 Business Problem

The global EV market is evolving rapidly across segments, geographies, and vehicle types — yet most players lack the analytical clarity to act on those shifts. Without a structured view of what drives sales and customer loyalty, businesses risk misallocating R&D and marketing budgets, and ceding ground to data-savvy competitors.

**Core Question:** *Which EV segments, brands, and product features deliver the strongest commercial outcomes — and where do the biggest opportunities remain untapped?*

---

## ❓ Key Questions Answered

| # | Business Question |
|---|-------------------|
| 1 | Which market segments (Budget / Mid-range / Premium / Luxury) best balance volume and revenue? |
| 2 | Do higher charging speeds and autopilot levels correlate with better ratings and sales? |
| 3 | How do price bands affect sales velocity across body types (SUV, Truck, Sedan, etc.)? |
| 4 | Which countries of origin are gaining or losing market share — and why? |
| 5 | What role do safety ratings and warranty length play in purchase decisions? |
| 6 | Which brands outside Tesla represent the highest-growth opportunity? |

---

## 📦 Deliverables

### 1. 🐍 Data Preparation (Python)
Cleans and transforms 2,000 EV records across 24 variables — resolving inconsistencies, engineering new features (revenue per model, performance-to-price ratio, range bands), and structuring data for analysis.

### 2. 🗄️ Data Analysis (SQL)
Organises cleaned data into a relational database. Queries surface segment trends, brand rankings, feature-to-sales correlations, and geographic share shifts.

### 3. 📊 Interactive Dashboard (Power BI)
Filterable by brand, segment, year, country, and body type — allowing stakeholders to explore trends without touching any data.

### 4. 📄 Report & Presentation
A written summary of findings and an executive slide deck with clear, actionable business recommendations.

### 5. 💻 GitHub Repository *(this repo)*
All scripts, queries, and files stored in a version-controlled, documented repository — reproducible and extendable.

---

## 💡 Key Data Highlights

- **2,000 models** from 6 countries across 2020–2026
- **Market revenue:** Luxury ($8.3T) and Premium ($7.1T) segments dominate
- **Sales leader:** Tesla (101M+ units) — followed by BYD and Volkswagen
- **Satisfaction gap:** Average customer rating of 3.57/5 — significant room for improvement
- **Autonomy adoption:** Only 6% of models feature Level 3 autopilot
- **Range disparity:** Budget averages 236 miles vs. 275 miles in Luxury

---

## ✅ Business Recommendations

1. **Double down on Luxury and Premium** — they generate 75%+ of total market revenue despite fewer unit sales
2. **Close the satisfaction gap** — a 3.57 average rating signals unmet expectations; feature benchmarking by segment can identify what's missing
3. **Track South Korean and Chinese brands** — they are closing fast on US and German manufacturers in model volume
4. **Invest in charging infrastructure partnerships** — Budget segment charging speeds average just 128 kW vs. 196 kW in Luxury, a key adoption barrier
5. **Prioritise Level 2+ autopilot in mid-range models** — currently concentrated in higher price tiers, this is an underexploited differentiator

---

## 🛠️ Tech Stack

| Layer | Tool |
|---|---|
| Data Cleaning | Python (pandas) |
| Data Analysis | SQL (MySQL) |
| Visualisation | Power BI |


---

## 📁 Repository Structure

```
ev-market-analytics/
├── data/
│   ├── raw/               # Original CSV dataset
│   └── cleaned/           # Processed, analysis-ready data
├── notebooks/             # Python data cleaning & EDA
├── sql/                   # Queries for segmentation & trends
├── dashboard/             # Power BI (.pbix) file
├── reports/               # Final report and presentation
└── README.md
```

---

*EV Market Analytics Project | Data period: 2020–2026 | 2,000 vehicle records*
