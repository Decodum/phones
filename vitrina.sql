SELECT shop_name, 
       product_name,
       tab.sales_cnt AS sales_fact,
       pl.plan_cnt AS sales_plan,
       tab.sales_cnt/pl.plan_cnt AS ratio_sales_fact_plan,
       (tab.sales_cnt * pr.price) AS income_fact,
       (pl.plan_cnt * pr.price) AS income_plan,
       (tab.sales_cnt * pr.price)/(pl.plan_cnt * pr.price) AS ration_income_fact_plan
FROM
(
SELECT *
FROM shop_dns UNION ALL 
SELECT *
FROM shop_mvideo UNION ALL
SELECT *
FROM shop_sitilink
) AS tab
JOIN plan AS pl ON pl.product_id=tab.product_id
JOIN products AS pr ON pr.product_id=tab.product_id
;



