create database ONLINE_SALES;
use ONLINE_SALES;
CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    item_id INT,
    price DECIMAL(10,2)
);
INSERT INTO orders (order_id, order_date, item_id, price) VALUES
(1001, '2024-01-15', 501, 29.99),
(1002, '2024-01-15', 623, 49.50),
(1003, '2024-01-16', 145, 15.75),
(1004, '2024-01-16', 287, 89.99),
(1005, '2024-01-17', 398, 199.99),
(1006, '2024-01-17', 456, 12.49),
(1007, '2024-01-18', 789, 34.95),
(1008, '2024-01-18', 234, 67.80),
(1009, '2024-01-19', 567, 149.99),
(1010, '2024-01-19', 890, 24.99),
(1011, '2024-01-20', 123, 79.99),
(1012, '2024-01-20', 432, 44.50),
(1013, '2024-01-21', 654, 199.95),
(1014, '2024-01-21', 876, 8.99),
(1015, '2024-01-22', 987, 129.99),
(1016, '2024-01-22', 246, 399.99),
(1017, '2024-01-23', 135, 59.99),
(1018, '2024-01-23', 791, 19.99),
(1019, '2024-01-24', 357, 149.50),
(1020, '2024-01-24', 468, 299.99);

select * from orders;

select order_id,month(order_date) as Months,sum(price) as Total_revenue
from orders group by Months,order_id;

select count(*) as Total_orders
from orders;

select month(order_date) as Months,avg(price) as avg_amount
from orders group by Months;

select year(order_date) as year,
month(order_date) as month,
sum(price) as total_revenue,
count(distinct order_id) as order_volume
from orders
group by year(order_date),month(order_date)
order by year,month
limit 2;
