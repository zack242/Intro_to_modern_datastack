select 
    orders.*,
    fact.total_extended_price,
    fact.total_discount_amount
from {{ ref('stg_tpch_orders') }} as orders
join  {{ref("int_orders_sum")}} as fact 
on orders.order_key = fact.order_key