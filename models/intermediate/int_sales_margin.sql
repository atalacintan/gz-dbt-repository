SELECT 
*
, quantity * purchase_price as satin_alma_maliyeti
, revenue - quantity * purchase_price as marj
FROM {{ref ("stg_raw__sales")}} as s
LEFT JOIN {{ref ("stg_raw__product")}} p 
USING (products_id) 
