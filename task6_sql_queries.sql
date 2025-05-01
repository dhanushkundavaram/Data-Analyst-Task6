create database sales;

create table online_sales (
    order_id INT,
    order_date DATE,
    product_id INT,
    amount DECIMAL(10, 2)
);


INSERT INTO online_sales (order_id, order_date, product_id, amount) VALUES
(1, '2023-01-15', 101, 250.00),
(2, '2023-01-20', 102, 300.00),
(3, '2023-02-10', 101, 150.00),
(4, '2023-02-18', 103, 400.00),
(5, '2023-03-05', 104, 350.00),
(6, '2023-03-22', 101, 500.00),
(7, '2023-04-01', 102, 450.00),
(8, '2023-04-15', 105, 300.00),
(9, '2023-04-20', 104, 200.00),
(10, '2023-04-30', 101, 150.00);


SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume FROM online_sales
GROUP BY year, month
ORDER BY year, month;


SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;