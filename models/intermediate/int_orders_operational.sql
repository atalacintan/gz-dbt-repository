SELECT 
orders_id
, date_date 
, total_marj_per_order + shipping_fee - logcost - ship_cost AS operasyonel_marj 
FROM {{ref("stg_raw__ship")}} as s
JOIN {{ref("int_orders_margin")}} as om
USING(orders_id)