WITH order_counts AS (
SELECT COUNT(*) as total_orders 
FROM orders)

SELECT
  CASE
    WHEN order_id % 2 != 0 AND order_id != total_orders THEN order_id + 1 -- this is for switching the top ORDER
    WHEN order_id % 2 != 0 AND order_id = total_orders THEN order_id -- this is odd last entry case
    ELSE order_id - 1 -- even entry case
  END AS corrected_order_id, 
  item
FROM orders
CROSS JOIN order_counts
ORDER BY corrected_order_id; 
