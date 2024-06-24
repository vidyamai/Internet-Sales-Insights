SELECT 
[DateKey]
      ,[FullDateAlternateKey] as date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as day
     -- ,[SpanishDayNameOfWeek]
     -- ,[FrenchDayNameOfWeek]
     -- ,[DayNumberOfMonth] 
     -- ,[DayNumberOfYear]
      ,[WeekNumberOfYear] as weekNbr
      ,[EnglishMonthName] as month_name
	  ,left([EnglishMonthName],3) as monthsht
     -- ,[SpanishMonthName]
     -- ,[FrenchMonthName]
      ,[MonthNumberOfYear] as monthno
      ,[CalendarQuarter] as qtr
      ,[CalendarYear] as year
     -- ,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
