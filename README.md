# 🏥 Healthcare Hospital Analytics Dashboard (SQL + Power BI)

An end-to-end healthcare analytics project built using **SQL for data analysis** and **Power BI for interactive dashboarding**.
The project analyzes hospital operational data including **patients, doctors, appointments, treatments, payments, and hospital bills** to uncover insights related to hospital utilization, treatment demand, revenue trends, and patient demographics.

The goal of this project is to demonstrate how raw healthcare datasets can be transformed into **decision-ready insights through data modeling, SQL analysis, and interactive dashboards**.

---

## 🖥 Dashboard Preview

**PAGE 1 - Hospital Overview**

<img width="889" height="501" alt="image" src="https://github.com/user-attachments/assets/c548cf06-ef8f-4f50-aee1-a6aac41f5b01" />

**PAGE 2 - Doctor's Performance**

<img width="892" height="502" alt="image" src="https://github.com/user-attachments/assets/76b7ed41-1e44-4e61-8bb3-3d6e035a67fc" />


**PAGE 3 - Patient**

<img width="887" height="500" alt="image" src="https://github.com/user-attachments/assets/5294c225-e579-4715-8959-2bc889fb69d3" />


---
## 📊 Project Overview

Healthcare institutions generate large volumes of operational data daily. Without proper analysis, this data cannot effectively support decision making.

This project focuses on:

* Analyzing **patient visit trends**
* Understanding **treatment demand**
* Monitoring **hospital revenue performance**
* Evaluating **appointment distribution**
* Tracking **patient demographics**

Using **SQL queries and Power BI visualization**, the dataset was transformed into an analytical dashboard that allows stakeholders to quickly explore hospital performance.

---

## 🗂 Dataset Description

The dataset consists of **six relational tables** representing different hospital operations.

| Table              | Description                                                 |
| ------------------ | ----------------------------------------------------------- |
| **Patients**       | Contains patient demographic details such as age and gender |
| **Doctors**        | Information about doctors and their specializations         |
| **Appointments**   | Records of patient appointments with doctors                |
| **Treatments**     | Types of treatments provided by the hospital                |
| **Hospital Bills** | Billing details for treatments and services                 |
| **Payments**       | Payment transactions associated with hospital bills         |

These datasets were integrated to perform **relational analysis and generate insights across hospital activities**.

---

## 🛠 Tools & Technologies Used

| Tool            | Purpose                                            |
| --------------- | -------------------------------------------------- |
| **SQL**         | Data exploration, joins, aggregation, and cleaning |
| **Power BI**    | Data modeling and dashboard creation               |
| **Power Query** | Data transformation and preprocessing              |
| **DAX**         | Calculated measures and KPIs                       |
| **GitHub**      | Project documentation and version control          |

---

## ⚙️ Data Preparation & SQL Analysis

Before building the dashboard, SQL was used to analyze and validate the dataset.

Key steps included:

* Inspecting tables and verifying data structure
* Checking for **null or inconsistent values**
* Performing **joins across multiple tables**
* Creating aggregated insights such as:

  * total appointments
  * patient distribution
  * revenue calculations
  * treatment demand analysis

Example analysis tasks:

* Identify total number of hospital appointments
* Calculate revenue generated from hospital bills
* Analyze patient distribution across time
* Evaluate which treatments are most frequently performed

The SQL scripts used for this analysis are available in a separate SQL folder in this repository.

## 🔗 Data Modeling in Power BI

After importing the CSV datasets into Power BI, relationships were created to build a **relational data model**.

### Key Relationships

* Patients → Appointments
* Doctors → Appointments
* Treatments → Hospital Bills
* Hospital Bills → Payments

This model enables **cross-table analysis across hospital operations**.

---

## 📊 Dashboard Features

The Power BI dashboard provides a **high-level overview of hospital performance** using multiple interactive visuals.

### KPI Cards

The dashboard highlights key hospital metrics including:

* **Total Doctors**
* **Total Patients**
* **Total Appointments**
* **Total Treatments Available**
* **Average Patient Age**
* **Total Revenue Generated**

These KPIs provide a quick summary of hospital activity.

---

## 📈 Visualizations

The report includes multiple visuals designed to explore hospital trends.

### Patient Visit Trend

**Line Chart**

Shows the **monthly trend of patient visits**, helping identify peak hospital activity periods.

---

### Appointment Distribution

**Treemap**

Displays **number of appointments by treatment type**, highlighting the most demanded treatments.

---

### Additional Analytical Visuals

The dashboard also includes visuals analyzing:

* patient distribution
* appointment patterns
* treatment utilization
* hospital revenue metrics

All visuals are fully interactive and allow filtering across the dataset.

---

## 📱 Mobile-Optimized Dashboard

To improve accessibility, a **mobile layout** was designed in Power BI.

The mobile version ensures that hospital insights can be viewed conveniently on smartphones while preserving the most important KPIs and visuals.

## 📁 Project Structure

```
Healthcare-Hospital-Analytics
│
├── Dataset
│   ├── patients.csv
│   ├── doctors.csv
│   ├── appointments.csv
│   ├── treatments.csv
│   ├── hospital_bills.csv
│   └── payments.csv
│
├── SQL Queries
│   └── healthcare_analysis.sql
│
├── Power BI Dashboard
│   └── Healthcare_Analytics.pbix
│
├── Dashboard Screenshots
│
└── README.md
```

---

## 🚀 Key Insights from the Analysis

* Hospital activity shows **clear variation in patient visits across months**
* Certain treatments account for **a larger proportion of hospital appointments**
* Revenue patterns correlate strongly with **treatment frequency**
* Patient demographics reveal patterns useful for **resource planning**

These insights can support **better hospital resource allocation and operational planning**.

---

## 💡 Business Value

This dashboard demonstrates how healthcare data can be used to:

* Monitor hospital performance
* Identify high demand treatments
* Track patient trends over time
* Support data-driven healthcare decisions

---

## 👩‍💻 Author

**Saumya Mathur**

⭐ If you found this project interesting, feel free to star the repository.
