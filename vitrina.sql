WITH tab AS (
    SELECT pl.shop_name, 
           pl.plan_cnt, 
           pl.product_id, 
           s.sales_cnt sales_s,
           d.sales_cnt sales_d,
           m.sales_cnt sales_m
    FROM plan pl
    JOIN shop_dns d ON pl.product_id = d.product_id
    JOIN shop_mvideo m ON pl.product_id = m.product_id
    JOIN shop_sitilink s ON pl.product_id = s.product_id
    GROUP BY pl.shop_name, 
             pl.plan_cnt, 
             pl.product_id, 
             d.sales_cnt, 
             m.sales_cnt,
             s.sales_cnt)
SELECT p.product_name, 