SELECT 
[ProductKey]
     ,[ProductAlternateKey] as ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] as ProductName
	  ,pc.EnglishProductCategoryName as Category
	  ,psc.[EnglishProductSubcategoryName] as SubCategory
      --,[SpanishProductName]
      --,[FrenchProductName]
     -- ,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] as ProductColor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] as ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] as ProductLine
      --,[DealerPrice]
      --,[Class]
     -- ,[Style]
      ,[ModelName] as ProductModelName
      --,[LargePhoto]
      ,[EnglishDescription] as ProductDescription
     -- ,[FrenchDescription]
     -- ,[ChineseDescription]
     -- ,[ArabicDescription]
    --  ,[HebrewDescription]
     -- ,[ThaiDescription]
     -- ,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,isnull([Status],'Outdated') as Status
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  left join dbo.DimProductSubCategory as psc  on psc.ProductSubcategoryKey=p.ProductSubcategoryKey
  left join dbo.DimProductCategory as pc on psc.ProductCategoryKey=pc.ProductCategoryKey
  order by p.ProductKey
 
