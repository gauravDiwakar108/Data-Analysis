-- Q1 : What is the total revenue gerenated by male vs female customers?
SELECT gender,
SUM(purchase_amount) AS revenue_by_gender
FROM customer
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

-- Q4 : Compare the average purchase amounts b/w standard and express shipping?
SELECT shipping_type AS "Shipping Type",
ROUND(AVG(purchase_amount)::numeric, 2) AS "Average Purchase Amount"
FROM customer
WHERE shipping_type IN ('Express', 'Standard')
GROUP BY shipping_type
ORDER BY "Average Purchase Amount" DESC;

-- Q5 : Do subscribe customers spend more? Compare average spend and total revenue b/w subscribers and non-subscribers.
SELECT subscription_status AS "Is Subscriber",
COUNT(customer_id) AS "Total Customers",
SUM(purchase_amount) AS "Total Revenue",
ROUND(AVG(purchase_amount)::numeric, 2) AS "Average Purchase Amount"
FROM customer
GROUP BY subscription_status
ORDER BY 3, 4 DESC;

-- Q6 : Which 5 products have the highest percentage of purchases with discounts applied?
SELECT item_purchased AS "Item",
SUM(100 *
	CASE 
		WHEN discount_applied = 'Yes' THEN 1 
		ELSE 0 
	END)/COUNT(*) AS "Discount Rate"
FROM customer
GROUP BY item_purchased
ORDER BY 2 DESC
LIMIT 5;

-- Q7 : Segment customers into new, returning, and loyal based on their total number of previous puchases, and show the count of each segment.

WITH customer_type AS (
SELECT customer_id,
previous_purchases,
CASE 
	WHEN previous_purchases = 1 THEN 'New'
	WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
	ELSE 'Loyal'
	END AS segment
FROM customer
)
SELECT segment,
COUNT(*) AS "No. of Customers"
FROM customer_type
GROUP BY segment
ORDER BY 2 DESC;



SELECT *
FROM customer
LIMIT 1;