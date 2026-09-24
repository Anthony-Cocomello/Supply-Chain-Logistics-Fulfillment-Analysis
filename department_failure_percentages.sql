SELECT
  INITCAP(TRIM(`Department Name`)) AS department,
  COUNT(*) AS total_orders,
  COUNTIF(`Order Status` = 'COMPLETE' AND DATE_DIFF(DATE(`shipping date _DateOrders_`), DATE(`order date _DateOrders_`), DAY) > 5) AS late_orders,
  ROUND((COUNTIF(`Order Status` = 'COMPLETE' AND DATE_DIFF(DATE(`shipping date _DateOrders_`), DATE(`order date _DateOrders_`), DAY) > 5)) / COUNT(*) * 100, 2) AS failure_percentage
FROM
  `xenon-poet-507321-s0.logistics_portfolio.supply_chain_data` 
GROUP BY
  1
ORDER BY
  failure_percentage DESC
