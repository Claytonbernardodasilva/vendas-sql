SELECT customerKey as customerID, SUM(SalesAmount) as SalesAmount

FROM FactInternetSales

WHERE year(OrderDate) > 2010

GROUP BY customerKey

HAVING SUM(SalesAmount) > 10000

ORDER BY SalesAmount Desc