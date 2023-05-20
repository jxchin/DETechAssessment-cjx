-- 1. Which are the top 10 members by spending
SELECT membership_id, sum(total_price) AS lifetime_spent 
FROM receipt
GROUP BY membership_id
ORDER BY lifetime_spent DESC
LIMIT 10;

-- 2. Which are the top 3 items that are frequently brought by members
SELECT product_id, count(product_id) as num_sold FROM sales
GROUP BY product_id
ORDER BY num_sold DESC
LIMIT 3