SELECT * FROM ecommerce_sales;

--1.Find the total number of products and the number of unique categories.
SELECT
    category,
    COUNT(product_name) AS no_of_products
FROM
    ecommerce_sales
GROUP BY
    category;

--2.Check whether product_id contains duplicates
SELECT
    product_id,
    COUNT(product_id) AS id_count
FROM
    ecommerce_sales
GROUP BY
    product_id;

--3.Find products where product_name, category, price, or review_score is NULL.
SELECT
    *
FROM
    ecommerce_sales
WHERE
    product_name IS NULL OR
    category IS NULL OR
    price IS NULL OR 
    review_score IS NULL;

--4.Find the average, minimum, and maximum price for each category.
SELECT
    category,
    MAX(price) AS max_price,
    MIN(price) AS min_price,
    AVG(price) AS avg_price
FROM
    ecommerce_sales
GROUP BY
    category;

--5.Find the average review_score and average review_count for each category.
SELECT
    category,
    AVG(review_score),
    AVG(review_count)
FROM
    ecommerce_sales
GROUP BY
    category;

--6.Classify products into price ranges: Low, Medium, High, based on their price.
SELECT
    product_name,
    CASE
        WHEN price < 200 THEN 'Low'
        WHEN price BETWEEN 200 AND 600 THEN 'Medium'
        WHEN price > 600 THEN 'High'
    END AS price_range
FROM
    ecommerce_sales;

--7.Find the top 10 products by total annual sales, where annual sales means the sum of all 12 monthly sales columns.
SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales
FROM
    ecommerce_sales
GROUP BY product_name
ORDER BY annual_sales DESC
LIMIT 10;

--8.Find the total annual sales for each category.
SELECT
    category,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales
FROM
    ecommerce_sales
GROUP BY category;

--9.Find the month with the highest total sales across all products.
SELECT
    product_name,
    'Month 1' AS month,
    SUM(sales_month_1) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 2' AS month,
    SUM(sales_month_2) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 3' AS month,
    SUM(sales_month_3) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 4' AS month,
    SUM(sales_month_4) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 5' AS month,
    SUM(sales_month_5) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 6' AS month,
    SUM(sales_month_6) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 7' AS month,
    SUM(sales_month_7) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 8' AS month,
    SUM(sales_month_8) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 9' AS month,
    SUM(sales_month_9) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 10' AS month,
    SUM(sales_month_10) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 11' AS month,
    SUM(sales_month_11) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 12' AS month,
    SUM(sales_month_12) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name
ORDER BY sales DESC;


--10.Find the month with the lowest total sales across all products.
SELECT
    product_name,
    'Month 1' AS month,
    SUM(sales_month_1) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 2' AS month,
    SUM(sales_month_2) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 3' AS month,
    SUM(sales_month_3) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 4' AS month,
    SUM(sales_month_4) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 5' AS month,
    SUM(sales_month_5) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 6' AS month,
    SUM(sales_month_6) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 7' AS month,
    SUM(sales_month_7) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 8' AS month,
    SUM(sales_month_8) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 9' AS month,
    SUM(sales_month_9) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 10' AS month,
    SUM(sales_month_10) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 11' AS month,
    SUM(sales_month_11) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name

UNION ALL

SELECT
    product_name,
    'Month 12' AS month,
    SUM(sales_month_12) AS sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name
ORDER BY sales;


--11.For every product, calculate its annual sales and its average monthly sales.
SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    'Month 1' AS month,
    AVG(sales_month_1) AS average_sales
FROM
    ecommerce_sales
GROUP BY product_name

UNION ALL

SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    'Month 2' AS month,
    AVG(sales_month_2) AS average_sales
FROM
    ecommerce_sales
GROUP BY product_name

UNION ALL

SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    'Month 3' AS month,
    AVG(sales_month_3) AS average_sales
FROM
    ecommerce_sales
GROUP BY product_name

UNION ALL

SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    'Month 4' AS month,
    AVG(sales_month_4) AS average_sales
FROM
    ecommerce_sales
GROUP BY product_name

UNION ALL

SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    'Month 5' AS month,
    AVG(sales_month_5) AS average_sales
FROM
    ecommerce_sales
GROUP BY product_name

UNION ALL

SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    'Month 6' AS month,
    AVG(sales_month_6) AS average_sales
FROM
    ecommerce_sales
GROUP BY product_name

UNION ALL

SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    'Month 7' AS month,
    AVG(sales_month_7) AS average_sales
FROM
    ecommerce_sales
GROUP BY product_name

UNION ALL

SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    'Month 8' AS month,
    AVG(sales_month_8) AS average_sales
FROM
    ecommerce_sales
GROUP BY product_name

UNION ALL

SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    'Month 9' AS month,
    AVG(sales_month_9) AS average_sales
FROM
    ecommerce_sales
GROUP BY product_name

UNION ALL

SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    'Month 10' AS month,
    AVG(sales_month_10) AS average_sales
FROM
    ecommerce_sales
GROUP BY product_name

UNION ALL

SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    'Month 11' AS month,
    AVG(sales_month_11) AS average_sales
FROM
    ecommerce_sales
GROUP BY product_name

UNION ALL

SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    'Month 12' AS month,
    AVG(sales_month_12) AS average_sales
FROM
    ecommerce_sales
GROUP BY product_name;

--12.Find products whose annual sales are above the average annual sales of all products.
SELECT
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales
FROM
    ecommerce_sales
GROUP BY ecommerce_sales.product_name
HAVING
 (SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12)) > (SELECT
    (AVG(sales_month_1) + AVG(sales_month_2) + AVG(sales_month_3) + AVG(sales_month_4)
     + AVG(sales_month_5) +
    AVG(sales_month_6) + AVG(sales_month_7) + AVG(sales_month_8) + AVG(sales_month_9) + AVG(sales_month_10) +
    AVG(sales_month_11) + AVG(sales_month_12))
FROM
    ecommerce_sales);

--13.Rank products by annual sales within each category.
SELECT
    product_name,
    category,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales,
    RANK() OVER (PARTITION BY category ORDER BY SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12)) AS ranks
FROM
    ecommerce_sales
GROUP BY product_name,category;

--14.For each category, identify the product(s) with the highest annual sales, including ties.
SELECT
    category,
    product_name,
    SUM(sales_month_1) + SUM(sales_month_2) + SUM(sales_month_3) + SUM(sales_month_4) + SUM(sales_month_5) +
    SUM(sales_month_6) + SUM(sales_month_7) + SUM(sales_month_8) + SUM(sales_month_9) + SUM(sales_month_10) +
    SUM(sales_month_11) + SUM(sales_month_12) AS annual_sales
FROM
    ecommerce_sales
GROUP BY category,product_name
ORDER BY category,annual_sales DESC;

