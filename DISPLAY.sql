--DISPLAY

--1
SELECT [ItemName] = Item_Name, [TotalItem]= 'Rp. ' + CAST((Item_Price*Stock) AS VARCHAR)
FROM Item I, Detail_Sales_Transaction DST, Header_Sales_Transaction HST
WHERE HST.Sales_TransactionID = DST.Sales_TransactionID AND DST.Item_ID = I.Item_ID AND I.Item_ID = 'IT003' AND DATENAME(WEEKDAY, Sales_Trasaction_Date) = 'Tuesday'

--2  
SELECT [StaffName] = Staff_Name, [Age] = DATEDIFF(YEAR,DoB,GETDATE()),[Total Purchased Item] = SUM(Quantity)
FROM Staff S,Header_Purchases_Transaction HPT,Detail_Purchases_Transaction DPT
WHERE S.Staff_ID = HPT.Staff_ID AND HPT.Purchase_TransactionID = DPT.Purchase_TransactionID AND GENDER = 'Female' AND DATEDIFF(YEAR,DoB,GETDATE()) > 25
GROUP BY Staff_Name,DoB

--3
SELECT [StaffName] = Staff_Name, [Item Variant Sold] = Item_Name, [Total Sold Item] = SUM(Quantity)
FROM Staff S, Header_Sales_Transaction HST, Detail_Sales_Transaction DST, Item I
WHERE S.Staff_ID = HST.Staff_ID AND HST.Sales_TransactionID = DST.Sales_TransactionID AND DST.Item_ID = I.Item_ID AND CHARINDEX(' ', Staff_Name) > 0 AND RIGHT(S.Staff_ID,1) % 2 = 0
GROUP BY Staff_Name, Item_Name
ORDER BY Staff_Name

--4
SELECT [CategoryName] = Category_Name, [Sales Revenue] = 'Rp. ' + CAST(Item_Price * Quantity AS VARCHAR), [Total Sales Transaction] = COUNT(Sales_TransactionID)
FROM Category C,Item I,Detail_Sales_Transaction DST
WHERE C.Category_ID = I.Category_ID AND I.Item_ID = DST.Item_ID AND Item_Name LIKE '%a%'
GROUP BY Category_Name,Item_Price,Quantity
HAVING COUNT(Sales_TransactionID) > 1

--5 
SELECT [ItemName]=Item_Name,[Price] = 'Rp. '+CAST(Item_Price AS VARCHAR),[CategoryName] = Category_Name,[CountryCode] =  UPPER(LEFT(Origin,3))
FROM Brand B,Item I,Category C,(SELECT MAX(Item_Price) AS MAKS FROM Item) AS X
WHERE B.Brand_ID = I.Brand_ID AND I.Category_ID = C.Category_ID AND Item_Price < 10000000 and Item_Price = x.MAKS
 

--6
SELECT [Name] =  'Mrs. ' + RIGHT(Staff_Name,CHARINDEX(' ',REVERSE(Staff_Name))-1 ), [StaffGender] = Gender, [positionSalary] = Salary
FROM Staff S, Position P,(SELECT AVG(Salary) AS RATA2 FROM Position) AS Y
WHERE S.Position_ID=P.Position_ID AND Gender = 'Female' AND Salary > Y.RATA2

--7
SELECT [CategoryCode] = UPPER(LEFT(Category_Name,2)),[ItemName] = Item_Name,[Price] = 'Rp. ' + CAST(Item_Price AS VARCHAR),[ItemStock] = I.Stock,[Total Sold Item]= COUNT(Sales_TransactionID)
FROM Category C,Item I,Detail_Sales_Transaction DST,(SELECT AVG(Stock) AS STOCK FROM Item) AS Z
WHERE C.Category_ID = I.Category_ID AND I.Item_ID= DST.Item_ID AND I.Stock < Z.STOCK AND Category_Name NOT LIKE '%a%'
GROUP BY Category_Name,Item_Name,Item_Price,I.Stock

--8
SELECT [CategoryName] = Category_Name , [BallName] = REPLACE(Item_Name, 'ball', ''),[ItemCost] = 'Rp. ' + CAST(Item_Price AS VARCHAR),[TotalTransaction] = CAST(COUNT(Purchase_TransactionID) AS VARCHAR) + ' transaction(s)',[PredictedIncome] = 'Rp. ' +  CAST(COUNT(Purchase_TransactionID)*Item_Price AS VARCHAR)
FROM Category C, Item I, Detail_Purchases_Transaction DST,(SELECT MAX(Item_Price) AS MAKS2 FROM Item) AS T
WHERE C.Category_ID = I.Category_ID AND I.Item_ID = DST.Item_ID AND Item_Name LIKE '%ball%'  AND T.MAKS2 > Item_Price
GROUP BY Category_Name,Item_Name,Item_Price

--9 
CREATE VIEW StaffReport AS
SELECT [StaffName] = Staff_Name, [Total Salary] = DATEDIFF(MONTH,Active_Date,GETDATE()) * Salary  , [Transaction Served] = COUNT(HST.Sales_TransactionID), [Total Sold Item] = SUM(Quantity)
FROM Staff S, Position P, Header_Sales_Transaction HST, Detail_Sales_Transaction DST
WHERE P.Position_ID = S.Position_ID AND S.Staff_ID =HST.Staff_ID AND HST.Sales_TransactionID = DST.Sales_TransactionID AND Position_Name != 'Manager'
GROUP BY Staff_Name,Active_Date,Salary

--10
CREATE VIEW ItemBrandReport AS 
SELECT [ItemName] = Item_Name, [BrandName] = Brand_Name, [Max Quantity Sold] = MAX(Quantity), [Min Quantity Sold] = MIN(Quantity)
FROM Item I, Brand B, Detail_Sales_Transaction DST
WHERE B.Brand_ID = I.Brand_ID AND I.Item_ID = DST.Item_ID AND LEN(Item_Name) < 15 AND CHARINDEX(' ',Brand_Name) = 0
GROUP BY Item_Name,Brand_Name