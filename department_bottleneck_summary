WITH shipping_counts AS (
  SELECT TRIM(LOWER(`Department Name`)) AS dept, COUNT(*) AS total_late_orders
  FROM `xenon-poet-507321-s0.logistics_portfolio.shipping_delay_exceptions` AS sde
  GROUP BY dept
),
log_counts AS (
  SELECT TRIM(LOWER(Department)) AS dept, COUNT(*) AS total_web_clicks
  FROM `xenon-poet-507321-s0.logistics_portfolio.tokenized_access_logs` AS tal
  GROUP BY dept
)
SELECT
  INITCAP(sc.dept) AS department,
  sc.total_late_orders,
  lc.total_web_clicks
FROM 
  shipping_counts AS sc
JOIN 
  log_counts AS lc
ON
  sc.dept = lc.dept
ORDER BY
  sc.total_late_orders DESC
