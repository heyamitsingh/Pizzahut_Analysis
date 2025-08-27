-- Retrieve the total number of orders placed.
SELECT
  COUNT(order_id) AS total_orders
FROM
  orders;

-- Calculate the total revenue generated from pizza sales.
SELECT
  SUM(p.price * o.quantity) AS total_revenue
FROM
  pizzas p
  JOIN order_details o ON p.pizza_id = o.pizza_id;

-- Identify the highest-priced pizza.
SELECT
  pizza_id,
  price
FROM
  pizzas
WHERE
  price = (
    SELECT
      MAX(price)
    FROM
      pizzas
  );

-- Identify the most common pizza size ordered.
SELECT
  p.size,
  COUNT(o.order_details_id) AS total
FROM
  pizzas p
  JOIN order_details o ON p.pizza_id = o.pizza_id
GROUP BY
  p.size
ORDER BY
  total DESC
LIMIT
  1;

-- List the top 5 most ordered pizza types along with their quantities.
SELECT
  pt.name,
  SUM(o.quantity) AS quantity
FROM
  order_details o
  JOIN pizzas p ON o.pizza_id = p.pizza_id
  JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY
  pt.name
ORDER BY
  quantity DESC
LIMIT
  5;

-- Find the total quantity of each pizza category ordered.
SELECT
  pt.category,
  SUM(o.quantity) AS quantity
FROM
  pizza_types pt
  JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
  JOIN order_details o ON p.pizza_id = o.pizza_id
GROUP BY
  pt.category
ORDER BY
  quantity;

-- Determine the distribution of orders by hour of the day.
SELECT
  EXTRACT(
    HOUR
    FROM
      TIME
  ) AS TIME,
  COUNT(order_id) AS total_orders
FROM
  orders
GROUP BY
  EXTRACT(
    HOUR
    FROM
      TIME
  )
ORDER BY
  TIME;

-- Find the category-wise distribution of pizzas.
SELECT
  category,
  COUNT(name)
FROM
  pizza_types
GROUP BY
  category;

-- Calculate the average number of pizzas ordered per day.
SELECT
  ROUND(AVG(quantity), 0) AS average
FROM
  (
    SELECT
      o.date,
      SUM(od.quantity) AS quantity
    FROM
      orders o
      JOIN order_details od ON o.order_id = od.order_id
    GROUP BY
      date
    ORDER BY
      date
  ) AS order_quantity;

-- Determine the top 3 most ordered pizza types based on revenue.
SELECT
  pt.name,
  ROUND(SUM(p.price * od.quantity), 0) AS revenue
FROM
  pizzas p
  JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
  JOIN order_details od ON p.pizza_id = od.pizza_id
GROUP BY
  pt.name
ORDER BY
  revenue DESC
LIMIT
  3;

-- Calculate the percentage contribution of each pizza type to total revenue.
WITH
  cte AS (
    SELECT
      pt.category,
      SUM(p.price * od.quantity) AS revenue
    FROM
      pizza_types pt
      JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
      JOIN order_details od ON p.pizza_id = od.pizza_id
    GROUP BY
      pt.category
  )
SELECT
  category,
  ROUND(revenue * 100 / SUM(revenue) OVER (), 2) AS percent_contribution
FROM
  cte
ORDER BY
  percent_contribution DESC;

-- Analyze the cumulative revenue generated over time.
WITH
  cte AS (
    SELECT
      o.date,
      ROUND(SUM(od.quantity * p.price), 0) AS sales
    FROM
      orders o
      JOIN order_details od ON o.order_id = od.order_id
      JOIN pizzas p ON od.pizza_id = p.pizza_id
    GROUP BY
      o.date
    ORDER BY
      o.date
  )
SELECT
  date,
  SUM(sales) OVER (
    ORDER BY
      date
  ) AS cumulative_sales
FROM
  cte
ORDER BY
  date

-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
SELECT
  category,
  pizza_type_id,
  revenue
FROM
  (
    SELECT
      pt.category,
      pt.pizza_type_id,
      SUM(p.price * od.quantity) AS revenue,
      ROW_NUMBER() OVER (
        PARTITION BY
          category
        ORDER BY
          SUM(p.price * od.quantity) DESC
      ) AS rn
    FROM
      pizza_types pt
      JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
      JOIN order_details od ON p.pizza_id = od.pizza_id
    GROUP BY
      pt.pizza_type_id,
      pt.category
    ORDER BY
      pt.category
  ) AS sales
WHERE
  rn <= 3
ORDER BY
  category,
  revenue DESC;