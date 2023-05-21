-- 1. Which are the top 10 members by spending
SELECT a.*, b.member_name FROM
(
	SELECT membership_id, sum(total_price) AS lifetime_spent 
	FROM receipt
	GROUP BY membership_id
) as a
LEFT JOIN 
(
	SELECT membership_id, member_name FROM member
) as b on a.membership_id = b.membership_id
ORDER BY lifetime_spent DESC
LIMIT 10;

-- 2. Which are the top 3 items that are frequently brought by members
SELECT a.*, b.product_name FROM
(
	SELECT product_id, count(product_id) as quantity_sold 
	FROM product_sold
	GROUP BY product_id
) as a
LEFT JOIN
(
	SELECT id, product_name FROM product
) as b on a.product_id = b.id
ORDER BY quantity_sold DESC
LIMIT 3;

