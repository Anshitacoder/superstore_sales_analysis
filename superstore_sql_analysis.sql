SELECT * FROM mytable LIMIT 20;
select category, SUM(sales) as total_sales
from mytable
group by category;
-- Top category
select category, sum(sales) as total_sales
from mytable
group by category
order by total_sales desc;
-- top 5 customers
select customer_name,sum(sales) as total_sales
from mytable
group by customer_name
order by total_sales desc
limit 5;
-- sales by region
select region, sum(sales) as total_region_sales
from mytable
group by region
order by total_region_sales desc; 
 -- citywise sales
 select city, sum(sales) as city_sales
 from mytable
 group by city
 order by city_sales desc;
 -- satewise sales
 select state, sum(sales) as state_sales
 from mytable
 group by state
 order by state_sales desc;
 -- segment analysis
 select segment, sum(sales) as segment_sales
 from mytable
 group by segment
 order by segment_sales desc;
 -- which shipping type is used more
 select ship_mode, sum(sales) as total_sales
 from mytable
 group by ship_mode
 order by total_sales desc;
 -- repeat customers vs one-time customers
 -- loyal customers
 select customer_name, count(order_id) as total_orders
 from mytable
 group by customer_name
 order by total_orders desc;
 -- on average,how much people spend
 select avg(sales) as avg_order_value
 from mytable;
 -- high value orders
select *
 from mytable
 where sales > 5000 
 -- top products
 select product_name, sum(sales) as total_sale
 from mytable
 group by product_name
 order by total_sale desc
 limit 10;
 -- which category works best in which region
 select region,category, sum(sales) as total_sales
 from mytable
 group by region,category
 order by region;
 select `sub-category`,sum(sales) as total_sales
 from mytable
 group by `sub-category`
 order by total_sales desc;
 -- phone is top sub-category but y?
 select region,sum(sales) as total_sales
 from mytable
 where `sub-category`='Phones'
 group by region
 order by total_sales desc;
 -- “Phones generate highest revenue, especially in the West region.
-- Company should focus marketing in this region to increase sales.”
 
 