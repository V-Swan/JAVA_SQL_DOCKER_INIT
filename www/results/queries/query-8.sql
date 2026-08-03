SELECT
    orders.number,
    SUM(products.price * order_product.quantity) AS total_price
FROM orders
         JOIN order_product
              ON orders.id = order_product.order_id
         JOIN products
              ON order_product.product_id = products.id
GROUP BY orders.id, orders.number
HAVING total_price BETWEEN 100 AND 550;