# Olist_orders_Analysis
Project steps:
  - Downloaded the files into Microsoft SQL Server
  - Joined the datasets together on different columns to make relashionship between tables and also for getting and accurate results
  - Using SQL commands, I created three new columns
     -    Delivery Time per Day: The time, in days, between the order purchased timestamp and the customer delivered timestamp.
     -    Delivered Late: A True or False variable that indicates if the customer delivered timestamp is before or after the estimated delivery timestamp.
     -    Average Seller Review Score: The average review score per seller id.
  - Created a Dashboard on Power BI Desktop
     - Dashboard contains three filters:
         1. The order purchase timestamp
         2. The order status
         3. Translated product category names
         4. Gauge chart that shows sum of price field across the whole dataset
         5. Gauge chart that shows the number of orders 
         6. Clustered column chart where each bar is a month of the order_purchase_timestamp field, and the bar segments are the Delivered Late field. The value of each bar segment is the sum of the price field.
         7. Bar chart that shows the top five sellers for each product category and their rankings by the sum of price so that the seller with the highest sum of price (with the help of dens rank SQL function) 
