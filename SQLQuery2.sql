Select * from Pizza_Sales

Select Sum(total_price) AS Total_Revenue from Pizza_Sales

Select Sum(total_price)/ count (distinct order_id) As Avg_Order_Value from Pizza_Sales

Select Count(distinct order_id) AS Total_Orders from Pizza_Sales

Select Cast (Sum(quantity)AS decimal(10,2))/
Cast (count(distinct order_id)AS decimal(10,2)) AS Avg_Pizzas_Per_Order from Pizza_Sales

Select DATENAME (DW,order_date) AS order_day,count(distinct order_id) AS Total_orders 
from Pizza_Sales
Group BY DATENAME(DW,order_date)

Select DATENAME(Month,order_date) AS Month_Name,COUNT(distinct order_id)AS Total_Orders
from Pizza_Sales
GROUP BY DATENAME(MONTH,order_date)
ORDER BY Total_orders DESC

Select pizza_category,sum(total_price) AS Total_sales,sum(total_price)*100/(Select sum(total_price)from Pizza_Sales) AS PCT
from Pizza_Sales
GROUP BY pizza_category

Select pizza_category,sum(total_price) AS Total_sales,sum(total_price)*100/(Select sum(total_price)from Pizza_Sales WHERE MONTH (order_date)=1) AS PCT
from Pizza_Sales
WHERE MONTH (order_date)=1
GROUP BY pizza_category

Select pizza_size,sum(total_price) AS Total_sales, Cast (sum(total_price)*100/(Select sum(total_price)from Pizza_Sales WHERE DATEPART(quarter,order_date)=1) AS DECIMAL(10,2)) AS PCT
from Pizza_Sales
 WHERE DATEPART(quarter,order_date)=1
GROUP BY pizza_size
ORDER BY PCT DESC

Select Top 5 pizza_name,SUM(total_price) AS Total_Revenue FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC


Select Top 5 pizza_name,SUM(total_price) AS Total_Revenue FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC 

Select Top 5 pizza_name,SUM(quantity) AS Total_Quantity FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC


Select Top 5 pizza_name,SUM(quantity) AS Total_Quantity FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC

Select Top 5 pizza_name,COUNT (DISTINCT order_id) AS Total_Orders FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC

Select Top 5 pizza_name,COUNT (DISTINCT order_id) AS Total_Orders FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC









