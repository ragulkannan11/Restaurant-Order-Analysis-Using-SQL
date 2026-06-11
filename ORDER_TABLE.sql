
use restaurant_db;
-- VIEW THE ORDER_DETAILS TABLE.
select * from order_details;

-- WHAT IS THE DATE RANGE OF THE TABLE.
select min(ORDER_DATE) , max(ORDER_DATE) FROM order_details;

-- HOW MANY ORDERS WERE MADE WITHIN THIS DATE RANGE ?
SELECT count(distinct ORDER_ID) FROM ORDER_DETAILS;

-- HOW MANY ITEMS WERE ORDER WITH IN THIS DATE RANGE ?
SELECT count(*) FROM ORDER_DETAILS;

-- WHICH ORDER HAD THE MOST NUMBER OF ITEMS?
select order_id, count(item_id) as num_items
from order_details
group by order_id
order by num_items desc;

-- how many orders had more than 12 items?

select count(*) from
(select order_id, count(item_id) as num_items
from order_details
group by order_id
having num_items > 12) as num_orders;
