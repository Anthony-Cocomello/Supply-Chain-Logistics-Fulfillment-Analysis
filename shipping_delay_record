SELECT
  `Order Id`,
	`Order Status`,
	`order date _DateOrders_`,
	`shipping date _DateOrders_`,
	`Department Name`
FROM
	`xenon-poet-507321-s0.logistics_portfolio.supply_chain_data`
WHERE
	`Order Status` = 'COMPLETE'
	AND DATE_DIFF(DATE(`shipping date _DateOrders_`), DATE(`order date _DateOrders_`), DAY) > 5
