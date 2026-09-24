SELECT
  FORMAT_DATE('%A', `order date _DateOrders_`) AS weekday,
  COUNT(*) AS total_late_orders
FROM
  `xenon-poet-507321-s0.logistics_portfolio.shipping_delay_exceptions` 
GROUP BY
  1
ORDER BY
  total_late_orders DESC
