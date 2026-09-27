SELECT 
date_date
, orders_id
, SUM(revenue) as total_revenue_per_order
, SUM(quantity) as total_quantity
, SUM(satin_alma_maliyeti) as total_satin_alma_maliyeti
, SUM(marj) as total_marj_per_order
FROM {{ref("int_sales_margin")}} m
GROUP BY orders_id, date_date