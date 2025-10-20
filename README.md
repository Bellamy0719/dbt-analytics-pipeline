# dbt-analytics-pipeline
End-to-end data transformation project using dbt and PostgreSQL. Builds modern data warehouse layers (staging → facts → marts) with automated testing, documentation, and lineage tracking to transform raw datasets into analytics-ready insights.

### Project Overview

This project demonstrates how to design a modular data warehouse using dbt.
Starting from raw e-commerce tables (orders, customers, order_items), it creates three curated layers — staging, facts, and marts — that support analytics and dashboarding.

Each layer applies consistent naming conventions, schema testing, and data documentation, following modern ELT best practices.

### Key Highlights

| Feature                             | Description                                                      |
| ----------------------------------- | ---------------------------------------------------------------- |
|  **Automated Data Transformations** | SQL models compiled and materialized by dbt                      |
|  **Data Quality Testing**           | Built-in dbt tests for `unique`, `not_null`, and `relationships` |
|  **Layered Modeling**               | Clean separation between staging, facts, and marts               |
|  **Auto Documentation**             | dbt docs generate searchable model lineage                       |
|  **Lineage Tracking**               | Full data flow visualization via dbt docs lineage graph          |

### Data Warehouse Architecture
```
              ┌─────────────────────┐
              │     Raw Data        │
              │ (public schema)     │
              │  - orders.csv       │
              │  - customers.csv    │
              │  - order_items.csv  │
              └─────────┬───────────┘
                        │
                        ▼
        ┌───────────────────────────────────┐
        │           Staging Layer           │
        │  stg_orders, stg_customers, ...   │
        │  → clean columns, fix types       │
        └────────────────┬──────────────────┘
                         │
                         ▼
        ┌───────────────────────────────────┐
        │            Facts Layer            │
        │  fct_sales_summary                │
        │  → aggregates orders + items      │
        └────────────────┬──────────────────┘
                         │
                         ▼
        ┌───────────────────────────────────┐
        │            Marts Layer            │
        │  mart_customer_dashboard          │
        │  → analytics-ready KPIs           │
        └───────────────────────────────────┘
```

### Workflow

## Step 1. Define Data Sources
We start by declaring where our raw data lives. In this case, the PostgreSQL public schema.
```
version: 2
sources:
  - name: raw
    schema: public
    tables:
      - name: olist_orders_dataset
      - name: olist_customers_dataset
      - name: olist_order_items_dataset
```
dbt doesn’t store data directly. Instead, it uses the source() function to reference existing raw tables in your database.
This ensures lineage tracking starts from the very origin of your data.

Once defined, we can use {{ source('raw', 'olist_orders_dataset') }} inside models to reference these tables.

## Step 1. Define Data Sources


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
