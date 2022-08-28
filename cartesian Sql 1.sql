use cartesian;
create table Purchase_History(
  Bills_Id int,
  Customer int,
  Product_Id int,
  Sale_Qty int,
  Bill_Amount int,
  Bill_Date date
  );
  
  INSERT INTO Purchase_History (Bills_Id,Customer,Product_Id,Sale_Qty,Bill_Amount,Bill_Date)
  VALUES
    (78807159, 44, 100, 1, 16000, '2020-02-22'),
    (82390697, 44, 100, 2, 5200, '2020-02-23'),
    (94479024, 44, 100, 1, 4200, '2020-02-27'),
    (94549714, 44, 100, 1, 21900, '2020-02-27'),
    (95521191, 44, 200, 1, 20000, '2020-02-27'),
    (142109733, 44, 200, 1, 8400, '2019-11-11'),
    (158391727, 44, 300, 1, 24100.01, '2019-11-16'),
    (168354993, 44, 300, 1, 24100.01, '2019-11-19'),
    (193504854, 44, 300, 1, 7600, '2019-11-26'),
    (195567022, 44, 300, 1, 2500, '2019-11-26'),
    (216619949, 44, 301, 1, 16000, '2019-12-01'),
    (228647858, 44, 401, 1, 28500.01, '2019-12-04'),
    (244924788, 66, 402, 1, 18200, '2019-12-08'),
    (244938525, 66, 403, 1, 16000, '2019-12-08'),
    (244947344, 66, 404, 2, 12600, '2019-12-08'),
    (245391938, 66, 405, 1, 4200, '2019-12-08'),
    (245896327, 66, 406, 1, 12500, '2019-12-08'),
    (270582683, 66, 407, 1, 5900, '2019-12-16'),
    (271089616, 66, 405, 1, 22500, '2019-12-16'),
    (393252504, 66, 301, 1, 26100, '2020-01-19'),
    (395961027, 66, 401, 1, 12900, '2020-01-19'),
    (407474852, 77, 402, 1, 4900, '2020-12-03')
    ;
 

create table Product_Catalogue(Product_Id int ,Dep_Id int ,Cat_Id int);
insert into Product_Catalogue(Product_Id,Dep_Id,Cat_Id) values
(100, 100, 1),
(100, 100, 1),
(100, 100, 1),
(100, 100, 1),
(200, 200, 1),
(200, 200, 1),
(300, 300, 2),
(300, 300, 2),
(300, 300, 2),
(301, 301, 2),
(401, 401, 3),
(403, 403, 3),
(404, 404, 3);

SELECT Bills_Id,Customer,Product_Id,Sale_Qty,Bill_Amount,Bill_Date
FROM Purchase_History 
ORDER BY Bill_Date desc;

select distinct Product_Id,Dep_Id,Cat_Id from Product_Catalogue;

CREATE TABLE table_joined AS (select Purchase_History.Bills_Id,Purchase_History.Customer,Purchase_History.Sale_Qty,Bill_Amount,Purchase_History.Bill_Date from Purchase_History left join Product_Catalogue on Purchase_History.Product_Id=Product_Catalogue.Product_Id);

Delete from table_joined where (Dep_Id,Cat_Id) is null;
Create table table_30days as (Delete from table_joined where Bill_Date>27-01-20

