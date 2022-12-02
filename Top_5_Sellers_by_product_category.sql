/****** Script for SelectTopNRows command from SSMS  ******/

SELECT [Product_category_name_english]
      ,[seller_id]
	  ,Sum_Price
	  FROM 
		(
		SELECT [Product_category_name_english]
			  ,[seller_id]
			  ,SUM([price]) AS sum_price
			  ,DENSE_RANK() OVER(PARTITION BY product_category_name_english ORDER BY SUM(price) DESC) rank_
		  FROM [OlistECommerce].[dbo].[order_items] AS OI
		  JOIN [OlistECommerce].[dbo].[products] AS P
		  ON OI.product_id = P.product_id
		  JOIN [OlistECommerce].[dbo].[product_category_name] PT
		  ON P.product_category_name = PT.product_category_name
		  GROUP BY Product_category_name_english, seller_id) a
		  WHERE rank_ <=5
  
 