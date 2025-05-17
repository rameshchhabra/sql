-- identify most common pizza size most ordered 

-- select quantity, count(order_detail_id) from orders_details group by quantity limit 1;
select pizzas.size, count(orders_details.order_detail_id) as order_count from pizzas join orders_details 
on pizzas.pizza_id = orders_details.pizza_id group by pizzas.size order by order_count desc limit 1;