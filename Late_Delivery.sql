SELECT s.seller_id, avg(review_score) AS Average_Score
       FROM order_reviews ore
	   JOIN order_items oi
	        ON ore.order_id = oi.order_id
       JOIN sellers s
	        ON oi.seller_id = s.seller_id
			group by s.seller_id
