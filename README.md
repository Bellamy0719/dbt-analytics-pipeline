# dbt-analytics-pipeline
End-to-end data transformation project using dbt and PostgreSQL. Builds modern data warehouse layers (staging → facts → marts) with automated testing, documentation, and lineage tracking to transform raw datasets into analytics-ready insights.

### Project Overview

This project demonstrates how to design a modular data warehouse using dbt.
Starting from raw e-commerce tables (orders, customers, order_items), it creates three curated layers — staging, facts, and marts — that support analytics and dashboarding.

Each layer applies consistent naming conventions, schema testing, and data documentation, following modern ELT best practices.

### Key Highlights

| Feature                               | Description                                                      |
| ------------------------------------- | ---------------------------------------------------------------- |
| ⚙️ **Automated Data Transformations** | SQL models compiled and materialized by dbt                      |
| 🔍 **Data Quality Testing**           | Built-in dbt tests for `unique`, `not_null`, and `relationships` |
| 🧩 **Layered Modeling**               | Clean separation between staging, facts, and marts               |
| 🧾 **Auto Documentation**             | dbt docs generate searchable model lineage                       |
| 🧠 **Lineage Tracking**               | Full data flow visualization via dbt docs lineage graph          |


```
brazilian_e_commerce/
│
├── dbt_project.yml     
├── profiles.yml 
│
├── models/
│   ├── staging/
│   │   ├── stg_orders.sql
│   │   ├── stg_order_items.sql
│   │   ├── stg_customers.sql
│   │   └── schema.yml
│   │
│   ├── facts/
│   │   ├── fct_sales_summary.sql
│   │   └── schema.yml
│   │
│   └── marts/
│       ├── mart_customer_dashboard.sql
│       └── schema.yml
│
├── README.md                        
└── LICENSE                           


```
