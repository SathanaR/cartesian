use cartesian;
CREATE TABLE customer (Customer_Id varchar(255));
INSERT INTO customer VALUES('Abhinash'),('Vipin'),('Mahesh'),('Bijoy'),('Bhabani'),('Ashutosh');
    
CREATE TABLE voucher (Voucher_Id varchar(255) UNIQUE);
INSERT INTO voucher VALUES('ABXFH'),('SDFGH'),('ERTYY'),('PPLKM');

SELECT Customer_Id as Coustomer_Key,Voucher_Id as Gift_Voucher_key FROM( SELECT Customer_Id, ROW_NUMBER() OVER (Order by (select 1)) AS rn FROM customer) AS x
left JOIN( SELECT Voucher_Id, ROW_NUMBER() OVER (Order by (select 1)) AS rn FROM voucher) AS y
ON x.rn = y.rn