
-- Вставка данных
INSERT INTO products (product_id, product_name, price) VALUES
    (1, 'Испорченный телефон', 51434),
    (2, 'Сарафанное радио', 9454),
    (3, 'Патефон', 17410);

INSERT INTO plan (product_id, shop_name, plan_cnt, plan_date) VALUES
    (1, 'shop_dns', 63, '2012-04-15 19:10:25'),
    (2, 'shop_mvideo', 8711, '2013-04-15 19:10:25'),
    (3, 'shop_sitilink', 845, '2021-08-17 19:10:25');

INSERT INTO shop_dns (product_id, date_, sales_cnt) VALUES
    (1, '2023-04-17 19:10:25', 134),
    (2, '2023-04-18 19:10:25', 634),
    (3, '2023-04-19 19:10:25', 63);

INSERT INTO shop_mvideo (product_id, date_, sales_cnt) VALUES
    (1, '2023-04-17 19:10:25', 354),
    (2, '2023-04-18 19:10:25', 253),
    (3, '2023-04-19 19:10:25', 14);

INSERT INTO shop_sitilink (product_id, date_, sales_cnt) VALUES
    (1, '2023-04-17 19:10:25', 876),
    (2, '2023-04-18 19:10:25', 94),
    (3, '2023-04-19 19:10:25', 17);
