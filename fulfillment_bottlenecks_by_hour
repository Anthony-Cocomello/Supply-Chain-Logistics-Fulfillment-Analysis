SELECT
  EXTRACT(HOUR FROM `order date _DateOrders_`) AS hour_of_day,
  COUNT(*) AS total_late_orders
FROM
  `xenon-poet-507321-s0.logistics_portfolio.shipping_delay_exceptions`
GROUP BY
  1
ORDER BY
  total_late_orders DESC  
