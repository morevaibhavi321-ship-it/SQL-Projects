CREATE TABLE amazon_sales (
    record_id INTEGER,
    order_id VARCHAR(50),
    order_date DATE,
    status VARCHAR(50),
    fulfilment VARCHAR(50),
    sales_channel VARCHAR(100),
    ship_service_level VARCHAR(50),
    style VARCHAR(50),
    sku VARCHAR(100),
    category VARCHAR(100),
    size VARCHAR(20),
    asin VARCHAR(20),
    courier_status VARCHAR(50),
    quantity INTEGER,
    currency VARCHAR(10),
    amount NUMERIC(12,2),
    ship_city VARCHAR(100),
    ship_state VARCHAR(100),
    ship_postal_code VARCHAR(20),
    ship_country VARCHAR(50),
    promotion_ids TEXT,
    b2b BOOLEAN,
    fulfilled_by VARCHAR(50)
);

CREATE TABLE international_sales (
    record_id INTEGER,
    sale_date DATE,
    sale_month VARCHAR(20),
    customer VARCHAR(100),
    style VARCHAR(50),
    sku VARCHAR(100),
    size VARCHAR(20),
    pieces NUMERIC(10,2),
    rate NUMERIC(12,2),
    gross_amount NUMERIC(12,2)
);

CREATE TABLE product_pricing_may2022 (
    record_id INTEGER,
    sku VARCHAR(100),
    style_id VARCHAR(100),
    catalog VARCHAR(100),
    category VARCHAR(100),
    weight NUMERIC(10,2),
    tp INTEGER,
    mrp_old INTEGER,
    final_mrp_old INTEGER,
    ajio_mrp INTEGER,
    amazon_mrp INTEGER,
    amazon_fba_mrp INTEGER,
    flipkart_mrp INTEGER,
    limeroad_mrp INTEGER,
    myntra_mrp INTEGER,
    paytm_mrp INTEGER,
    snapdeal_mrp INTEGER
);

CREATE TABLE product_pricing_march2021 (
    record_id INTEGER,
    sku VARCHAR(100),
    style_id VARCHAR(100),
    catalog VARCHAR(100),
    category VARCHAR(100),
    weight NUMERIC(10,2),
    tp_1 INTEGER,
    tp_2 NUMERIC(12,2),
    mrp_old INTEGER,
    final_mrp_old INTEGER,
    ajio_mrp INTEGER,
    amazon_mrp INTEGER,
    amazon_fba_mrp INTEGER,
    flipkart_mrp INTEGER,
    limeroad_mrp INTEGER,
    myntra_mrp INTEGER,
    paytm_mrp INTEGER,
    snapdeal_mrp INTEGER
);

CREATE TABLE inventory (
    record_id INTEGER,
    sku_code VARCHAR(100),
    design_no VARCHAR(100),
    stock NUMERIC(12,2),
    category VARCHAR(100),
    size VARCHAR(20),
    color VARCHAR(50)
);