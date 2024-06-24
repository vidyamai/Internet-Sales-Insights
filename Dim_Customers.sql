SELECT
[CustomerKey]
     -- ,[GeographyKey]
     -- ,[CustomerAlternateKey]
     -- ,[Title]
      ,[FirstName]
     -- ,[MiddleName]
      ,[LastName]
	  ,[FirstName]+' '+[LastName] as FullName
      --,[NameStyle]
     -- ,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,case [Gender] when 'M' then 'Male' when 'F' then 'Female' end as gender
     -- ,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
     -- ,[EnglishOccupation]
     -- ,[SpanishOccupation]
     -- ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
     -- ,[CommuteDistance]
	 ,g.city as Customercity
	 
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] c
  left join dbo.[DimGeography] g
  on c.GeographyKey=g.GeographyKey
  order by CustomerKey
