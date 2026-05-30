-- Q1 : What is the total revenue gerenated by male vs female customers?
SELECT
	gender,
	SUM(purchase_amount) AS revenue_by_gender
FROM 
	customer
GROUP BY gender
ORDER BY revenue_by_gender DESC;

-- Q2 : Which customers used a discount but still spent more than average purchase amount?
SELECT COUNT(*)
FROM customer
WHERE discount_applied = 'Yes' AND
purchase_amount >= 
	(
	SELECT AVG(purchase_amount)
	FROM customer
);

-- Q3 : Which are the top 5 products with the highest average review rating?
SELECT item_purchased,
ROUND(AVG(review_rating)::numeric,2) AS item_avg_rating
FROM customer
GROUP BY item_purchased
ORDER BY item_avg_rating DESC
LIMIT 5;




SELECT *
FROM customer
LIMIT 1;