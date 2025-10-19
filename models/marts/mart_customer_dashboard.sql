select
    c.customer_unique_id,
    c.customer_city,
    c.customer_state,
    count(distinct f.order_id) as total_orders,
    round(avg(f.total_order_value), 2) as avg_order_value,
    min(f.order_date) as first_order_date
from {{ ref('fct_sales_summary') }} f
join {{ ref('stg_customers') }} c using (customer_id)
group by 1, 2, 3

