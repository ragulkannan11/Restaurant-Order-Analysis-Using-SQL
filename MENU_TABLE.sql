use restaurant_db;

-- 1.VIEW THE MENU ITEM TABLE
select * from menu_items;

-- 2. FIND NUMBER OF MENUS.
select count(*) from menu_items;

-- 3. WHAT ARE THE LEAST AND MOST EXPENSIVE ITEMS ON THE MENU
select COUNT(*) from menu_items
order by price;

select * from menu_items
order by price DESC;

-- 4.FIND HOW MANY ITALIAN DISH ARE THERE IN MENU.
select count(*) from menu_items
where category='italian';

select * from menu_items
where category='italian';

-- 5.find the least and most expensive italian dishes on the menu ?

select * from menu_items
where category='italian'
order by price DESC;

-- 6. how many dishes are in each category ?
select category, count(menu_item_id) as num_dishes
from menu_items
group by category;

SELECT COUNT(DISTINCT category)
FROM MENU_ITEMS;

-- what is the average dish price within each category ?

select category, avg(price) as avg_price
from menu_items
group by category;


