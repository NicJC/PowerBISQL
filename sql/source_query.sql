SELECT
    cust.CustomerKey,
    cust.FirstName,
    cust.LastName,
    cust.EmailAddress,
    res.ResellerKey,
    res.ResellerName,
    geo.City,
    geo.StateProvinceName,
    geo.EnglishCountryRegionName,
    sales.ProductKey,
    sales.OrderDateKey,
    sales.SalesOrderNumber,
    sales.SalesOrderLineNumber,
    sales.OrderQuantity,
    sales.UnitPrice,
    sales.SalesAmount,
    prod.EnglishProductName,
    prod.Color,
    prod.ListPrice,
    prod.ModelName

  FROM [AdventureWorksDW2025].[dbo].[FactResellerSales] sales

  JOIN [AdventureWorksDW2025].[dbo].[DimProduct] prod

  ON prod.ProductKey = sales.ProductKey

  JOIN [AdventureWorksDW2025].[dbo].[FactInternetSales] fs

  ON fs.ProductKey = sales.ProductKey
  
  JOIN [AdventureWorksDW2025].[dbo].[DimCustomer] cust

  ON cust.CustomerKey = fs.CustomerKey

  join [AdventureWorksDW2025].[dbo].[DimGeography] geo

  ON cust.GeographyKey = geo.GeographyKey

  join [AdventureWorksDW2025].[dbo].[DimReseller] res

  ON res.ResellerKey = sales.ResellerKey 
  
  ;
  