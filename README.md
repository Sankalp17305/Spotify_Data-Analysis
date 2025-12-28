# 🎵 Spotify Music Popularity Analysis Dashboard

## 📌 Project Overview
This project analyzes a large Spotify tracks dataset to understand **music popularity trends**, **genre performance**, and **explicit content distribution** over time.  
The analysis follows the **Google Data Analytics workflow** using **Python, BigQuery, and Looker Studio** to transform raw data into actionable insights.

---

## 🧠 Business Objective
Spotify-style platforms need to understand:
- What genres perform best?
- How popularity changes over time
- The share of explicit content in the catalog
- Which genre dominates listener preference

This dashboard provides a **high-level analytical view** to support **playlist curation, content strategy, and trend monitoring**.

---

## 🗂 Dataset
- **Source:** Spotify Tracks CSV dataset
- **Records:** ~85,000 tracks
- **Key fields used:**
  - Track popularity
  - Genre
  - Explicit flag
  - Release date / year
  - Artist information

---

## 🔧 Tools & Technologies
| Tool | Purpose |
|----|----|
| **Python (Pandas, Matplotlib)** | Data cleaning & exploratory analysis |
| **Google BigQuery** | Scalable SQL analysis & views |
| **Looker Studio** | Interactive dashboard & visualization |
| **GitHub** | Version control & portfolio showcase |

---

## 🔄 Data Workflow
```
Raw Spotify CSV
      ↓
Python (Cleaning & Feature Engineering)
      ↓
BigQuery (Tables & Views)
      ↓
Looker Studio Dashboard
```

---

## 📊 Dashboard KPIs (Top Row)

### 1️⃣ Total Tracks Analyzed
**85,000 tracks**  
Represents the total number of Spotify tracks included in the analysis.

**Why it matters:**  
Establishes dataset scale and analytical coverage.

---

### 2️⃣ Average Song Popularity
**48.16 (out of 100)**  
Shows the overall average popularity score across all tracks.

**Insight:**  
Most songs fall in the mid-popularity range, indicating a competitive music landscape.

---

### 3️⃣ Explicit Tracks Percentage
**20.13%**  
Percentage of tracks marked as explicit.

**Insight:**  
Non-explicit content dominates the catalog, suggesting broader audience targeting.

> This KPI dynamically updates when the **release year filter** is applied.

---

### 4️⃣ Most Famous Genre
**Pop**  
The genre with the highest track presence and consistent popularity.

**Insight:**  
Pop remains the most dominant and stable genre across years.

---

## 📈 Visual Analysis

### 📊 Top 5 Genres by Average Popularity
**Bar Chart**

**What it shows:**
- Pop, R&B, Classical, Hip-Hop, and EDM have very similar average popularity scores (~48).

**Key Insight:**
> While Pop leads in volume, popularity scores across top genres are closely competitive.

---

### 📉 Average Song Popularity Over Time
**Line Chart (2015–2025)**

**What it shows:**
- Slight fluctuations with a peak around **2021**
- Overall stable trend between **47.8 – 48.5**

**Key Insight:**
> Song popularity has remained relatively stable over the last decade, with no extreme volatility.

---

## 🎛 Interactive Filters
- **Release Year Filter**
  - Updates KPIs and charts dynamically
  - Allows time-based trend analysis

This interactivity enables **exploratory analysis** rather than static reporting.

---

## 💡 Key Insights Summary
- Popularity is highly competitive with most tracks clustering near the average
- Pop is the most dominant genre, but other genres are close in popularity
- Only ~20% of tracks are explicit
- Music popularity trends are stable year-over-year

---

## 📁 Repository Structure
```text
spotify-data-analysis/
├── dashboard/
│   └── looker_dashboard.png
├── data/
|   |__ spotify.csv
|   |__ spotify_cleaned.csv  
├── notebooks/
|   |__spotify_data_cleaning_and_eda.ipynb
├── sql/
|   |__spotify_bigquery_analysis.sql
└── README.md

```

---

## 🚀 How to Use
1. Review the cleaned dataset and Python notebook
2. Explore SQL queries used in BigQuery
3. View dashboard screenshot or connect BigQuery views to Looker Studio
4. Apply filters to explore trends interactively

---

## 🎯 Why This Project Matters
This project demonstrates:
- End-to-end data analytics workflow
- Strong SQL & BigQuery usage
- Business-driven dashboard design
- Clear storytelling with data

Perfect for **Google Data Analyst internship & entry-level roles**.

---

## 👤 Author
**Sankalp Tamboli**  
Aspiring Data Analyst | Python | SQL | BigQuery | Looker Studio
