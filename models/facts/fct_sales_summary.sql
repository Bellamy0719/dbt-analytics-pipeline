select
    o.order_id,
    o.customer_id,
    sum(i.price + i.freight_value) as total_order_value,
    count(distinct i.product_id) as total_products,
    min(o.order_date) as order_date
from {{ ref('stg_orders') }} o
join {{ ref('stg_order_items') }} i using (order_id)
group by 1, 2
