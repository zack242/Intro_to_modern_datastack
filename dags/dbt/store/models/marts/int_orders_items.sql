select  
        line_item.order_item_key,
        line_item.part_key,
        line_item.line_number,
        line_item.extended_price,
        {{calcul_promo('extended_price','discount_percentage')}} as item_discount_amount,
        orders.order_key,
        orders.customer_key,
        orders.order_date,
from {{ ref('stg_tpch_items')}} as line_item 
join {{ ref('stg_tpch_orders')}} as orders
on line_item.order_key = orders.order_key
order by line_item.order_item_key