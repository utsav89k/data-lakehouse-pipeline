# Azure Data Pipeline Project

This project implements a data pipeline using **Azure Data Factory (ADF)**, **Databricks**, and **Synapse Analytics**. The pipeline automates ingestion, transformation, and storage of raw data into analytics-ready datasets, enabling actionable business insights across multiple layers of a data lakehouse architecture.

---

## Project Overview

The pipeline processes raw data from source systems, stores it in a **Bronze layer**, transforms and enriches it in a **Silver layer** using Databricks, and finally prepares curated datasets in **Synapse Analytics** for reporting and business intelligence consumption. This architecture ensures data quality, scalability, and efficient query performance for analytics teams.

---

## Objectives

**Data Ingestion & Storage:**

- Automate ingestion of raw files into the Bronze layer.
- Validate file formats and ensure all mandatory columns are present.

**Data Transformation & Enrichment:**

- Clean and standardize raw data in the Silver layer.
- Integrate additional metadata or dimensional data as needed.

**Analytics & Reporting:**

- Prepare curated datasets in Synapse for downstream analytics.
- Enable business teams to access insights quickly and reliably.

---

## Data Pipeline Steps

### 1. Azure Data Factory (ADF)

- **Bronze Layer Pipeline:** Ingests raw files from source systems into the Bronze layer in the data lake.
- **Silver Layer Pipeline:** Uses a **Databricks Notebook** for transformation and enrichment.
- **Lookup File:** Contains paths for ForEach loops to dynamically process multiple files.

### 2. Databricks Notebook

- Processes raw data from the Bronze layer.
- Cleans, standardizes, and enriches the dataset.
- Writes transformed data to the Silver layer.

### 3. Synapse Analytics

- Executes SQL scripts to create analytics-ready datasets.
- Includes scripts for:
  - Aggregation and KPI calculations
  - Dimension table creation
  - Fact table creation
  - Final data mart preparation for reporting

### 4. Storage & Format

- All data layers stored in **Azure Data Lake Storage (ADLS)**.
- Data partitioned and saved in **Parquet format** for optimized querying.

---

## How to Run the Project

### Prerequisites

- **Azure Subscription:** Access to ADF, Databricks, Synapse Analytics, and ADLS.
- **Databricks Workspace:** Cluster configured to run notebooks.
- **Synapse Analytics Workspace:** SQL pool ready for script execution.
- **Python Dependencies:** Required for Databricks notebooks (if any).

### Setup Instructions

1. **Deploy ADF Pipelines**
   - Import `ARMTemplateForFactory.json` and `ARMTemplateParametersForFactory.json` into your ADF instance.
   - Configure the `lookup_file.json` with the correct source paths.

2. **Run Databricks Notebook**
   - Upload and execute `silver_layer.ipynb` in your Databricks workspace.

3. **Execute Synapse Scripts**
   - Run the SQL scripts (`script_1.sql` through `script_4.sql`) in the correct order to build the final analytics tables.

4. **Validate Outputs**
   - Ensure datasets in Silver and Synapse layers are complete and partitioned correctly.
   - Test queries to confirm correctness of aggregations and transformations.

---

## Technologies Used

- **Azure Data Factory:** Orchestrates pipelines and data movement.
- **Azure Databricks:** Performs data transformation and enrichment.
- **Azure Synapse Analytics:** Stores curated data marts and supports analytics queries.
- **Azure Data Lake Storage (ADLS):** Stores raw and processed data.
- **Parquet:** Efficient columnar storage format for analytical workloads.

---

## Author & Contact

```
Author: Utsav Kanani
Email: ukanani8901@gmail.com
```
