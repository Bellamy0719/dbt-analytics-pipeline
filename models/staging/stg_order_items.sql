select
    order_id,
    product_id,
    price,
    freight_value
from {{ source('raw', 'olist_order_items_dataset') }}


