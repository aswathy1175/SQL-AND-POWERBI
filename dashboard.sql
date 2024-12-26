USE dashboard;
SELECT * FROM mobile;
/*check mobile features and price list*/
SELECT phone_name,price FROM mobile;
/*find out the price of 5 most expensive mobiles*/
SELECT * FROM mobile
ORDER BY price DESC
LIMIT 5;
/*find out the price of 5 most Cheapest mobiles*/
SELECT * FROM mobile
ORDER BY price ASC
LIMIT 5;
/*list of top 5 samsung phones with all feaures and price*/
SELECT * FROM mobile WHERE Brands="samsung"
ORDER BY price DESC
LIMIT 5;
/*must have android phones list then top 5 high price android phones */
SELECT * FROM mobile WHERE Operating_System_Type="Android"
ORDER BY price DESC
LIMIT 5;
/*must have android phones list then top 5 low price android phones */
SELECT * FROM mobile WHERE Operating_System_Type="Android"
ORDER BY price ASC
LIMIT 5;
/*must have IOS  phones list then top 5 High price IOS phones */
SELECT * FROM mobile WHERE Operating_System_Type="iOS"
ORDER BY price DESC
LIMIT 5;
/*must have IOS phones list then top 5 low price IOS phones */
SELECT * FROM mobile WHERE Operating_System_Type="iOS"
ORDER BY price ASC
LIMIT 5;
/*Write a query which a phone support 5g and also top 5 phones with 5g support*/
SELECT * FROM mobile WHERE 5G_Availability="Yes"
ORDER BY price DESC
LIMIT 5;
/*Total price of all mobiles is to be found with brand name*/
SELECT Brands,SUM(Price) FROM mobile GROUP BY Brands;