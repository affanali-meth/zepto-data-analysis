-- CREATE DATABASE zepto;
-- USE zepto;

-- SELECT COUNT(*) FROM orders_data;
-- SELECT * FROM orders_data LIMIT 10;

-- Average delivery time per category
-- SELECT 
--     primary_category,
--     AVG(TIMESTAMPDIFF(MINUTE, order_timestamp, delivery_timestamp)) AS avg_delivery_time
-- FROM orders_data
-- WHERE delivery_timestamp IS NOT NULL
-- GROUP BY primary_category;


-- Maximum and minimum delivery times
-- SELECT 
--     MAX(TIMESTAMPDIFF(MINUTE, order_timestamp, delivery_timestamp)) AS max_delivery_time,
--     MIN(TIMESTAMPDIFF(MINUTE, order_timestamp, delivery_timestamp)) AS min_delivery_time
-- FROM orders_data


-- Count cancelled/returned orders per city
-- SELECT 
--     city,
--     COUNT(*) AS cancelled_orders
-- FROM orders_data
-- WHERE delivery_timestamp IS NULL
-- GROUP BY city
-- ORDER BY cancelled_orders DESC;


-- Average rating per category
-- SELECT 
--     primary_category,
--     AVG(rating) AS avg_rating,
--     COUNT(rating) AS rating_count
-- FROM orders_data
-- GROUP BY primary_category;


-- Compare delivered vs cancelled rating
-- SELECT 
--     CASE WHEN delivery_timestamp IS NOT NULL THEN 'Delivered' ELSE 'Not Delivered' END AS delivery_status,
--     AVG(rating) AS avg_rating,
--     COUNT(*) AS orders_count
-- FROM orders_data
-- GROUP BY delivery_status;


-- Orders by hour of day
-- SELECT 
--     HOUR(order_timestamp) AS order_hour, 
--     COUNT(*) AS total_orders
-- FROM orders_data
-- WHERE delivery_timestamp IS NOT NULL
-- GROUP BY HOUR(order_timestamp)
-- ORDER BY order_hour;


-- Orders by month
-- SELECT MONTH(order_timestamp) AS month, COUNT(*) AS total_orders
-- FROM orders_data
-- GROUP BY month
-- ORDER BY month;


-- Average order value per city
-- SELECT city, AVG(final_order_value) AS avg_order_value
-- FROM orders_data
-- GROUP BY city
-- ORDER BY avg_order_value DESC;


-- Total discounts given per payment method
-- SELECT payment_method, SUM(discount_amount) AS total_discount
-- FROM 
-- GROUP BY payment_method;



