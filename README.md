# dbt-analytics-pipeline
End-to-end data transformation project using dbt and PostgreSQL. Builds modern data warehouse layers (staging → facts → marts) with automated testing, documentation, and lineage tracking to transform raw datasets into analytics-ready insights.


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
