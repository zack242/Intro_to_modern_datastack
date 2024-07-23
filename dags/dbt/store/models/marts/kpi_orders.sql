select 
    CUSTOMER_KEY,
    sum(total_discount_amount) as total_achat 
FROM {{ref('fact_orders')}}
GROUP BY customer_key ORDER BY total_achat 
LIMIT 10;