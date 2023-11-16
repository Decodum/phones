-- Создание таблиц
CREATE TABLE IF NOT EXISTS products (
    product_id BIGINT PRIMARY KEY,
    product_name VARCHAR(255),
    price BIGINT
);

CREATE TABLE IF NOT EXISTS shops (
    shop_name VARCHAR(255) PRIMARY KEY,
    shop_id BIGINT
);

CREATE TABLE IF NOT EXISTS plan (
    product_id BIGINT REFERENCES products(product_id),
    shop_name VARCHAR(255),
    plan_cnt BIGINT,
    plan_date TIMESTAMP
);

CREATE TABLE IF NOT EXISTS shop_dns (
    product_id BIGINT,
    date_ TIMESTAMP,
    sales_cnt BIGINT
);

CREATE TABLE IF NOT EXISTS shop_mvideo (
    product_id BIGINT,
    date_ TIMESTAMP,
    sales_cnt BIGINT
);

CREATE TABLE IF NOT EXISTS shop_sitilink (
    product_id BIGINT,
    date_ TIMESTAMP,
    sales_cnt BIGINT
);

