select
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp::date as order_date,
    order_approved_at::date as approved_date,
    order_delivered_customer_date::date as delivered_date
from {{ source('raw', 'olist_orders_dataset') }}
where order_status in ('delivered', 'shipped')

