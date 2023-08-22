-- Cleansed FACT_InternetSales Table --
SELECT
[ProductKey],
[OrderDateKey],
[DueDateKey],
[ShipDateKey],
[CustomerKey],
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
[SalesOrderNumber],
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
[SalesAmount]
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
FROM
	FactInternetSales
WHERE
	LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- ensure we always only bring two years of the date from extraction

ORDER BY
	OrderDateKey ASC