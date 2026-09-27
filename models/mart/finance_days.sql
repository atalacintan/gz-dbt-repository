SELECT
op.date_date
, SUM(total_revenue_per_order) as toplam_kar
, SUM(operasyonel_marj) as operasyonel_marj
, SUM(mg.total_satin_alma_maliyeti) as satin_alma_maliyeti
, ROUND(SUM(operasyonel_marj),2) as Gun_Bazinda_Kar
, COUNT(DISTINCT mg.orders_id) as gunluk_siparis_miktari
, SUM(total_revenue_per_order) / NULLIF(COUNT(DISTINCT mg.orders_id),0) as ortalam_sepet
FROM {{ref("int_orders_operational")}} as op 
JOIN {{ref("int_orders_margin")}} as mg
ON op.orders_id = mg.orders_id
GROUP BY op.date_date