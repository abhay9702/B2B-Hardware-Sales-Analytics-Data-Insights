SELECT * FROM transactions;

/*show transactions for Chennai market (market code for chennai is Mark001*/
SELECT * FROM transactions 
where market_code='Mark001';

/*Show distrinct product codes that were sold in chennai*/
SELECT distinct product_code FROM transactions 
where market_code='Mark001';

/*Show transactions where currency is US dollars*/
SELECT * from transactions 
where currency="USD";


/*Show all date records*/
SELECT * FROM date;

/*Show transactions in 2020 join by date table*/
SELECT * FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2020;

/*Show transactions in 2019 join by date table*/
SELECT * FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2019;

/*Show total revenue in year 2020,*/
SELECT SUM(t.sales_amount) as total_revenue FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2020;

/*Show total revenue in year 2019,*/
SELECT SUM(t.sales_amount) as total_revenue FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2019;

/*Show  average in year 2020,*/
SELECT AVG(t.sales_amount) FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2020;

/*Show  average in year 2019,*/
SELECT AVG(t.sales_amount) FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2019;

/*Show  max sales amount in year 2019,*/
SELECT max(t.sales_amount) FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2019;

/*Show total revenue in year 2020, January Month,*/
SELECT SUM(t.sales_amount) as total_revenue FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2020 and d.month_name = "January";

/*Show total revenue in year 2020, February Month,*/
C

/*Show total revenue in year 2019, January Month,*/
SELECT SUM(t.sales_amount) as total_revenue FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2019 and d.month_name = "January";

/*Show total revenue in year 2019, February Month,*/
SELECT SUM(t.sales_amount) as total_revenue FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2019 and d.month_name = "January";

/*Show total revenue in year 2020 in Chennai*/
SELECT SUM(t.sales_amount) as total_revenue FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2020 and t.market_code = "Mark001";

/*Show total revenue in year 2020 in Mumbai*/
SELECT SUM(t.sales_amount) as total_revenue FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2020 and t.market_code = "Mark002";

/*show the distinct product chennai*/
SELECT distinct product_code from transactions 
where market_code='Mark001';

/*show the distinct product Mumbai*/
SELECT distinct product_code from transactions 
where market_code='Mark002';

/*Show total revenue in year 2020, January Month, in chennai*/
SELECT SUM(t.sales_amount) as total_revenue FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2020 and d.month_name = "January" and t.market_code = "Mark001";

/*Show total revenue in year 2020, February Month, chennai*/
SELECT SUM(t.sales_amount) as total_revenue FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2020 and d.month_name = "February" and t.market_code = "Mark001";

/*Show total revenue in year 2020, January Month, in mumbai*/
SELECT SUM(t.sales_amount) as total_revenue FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2020 and d.month_name = "January" and t.market_code = "Mark002";

/*Show total revenue in year 2020, February Month, mumbai*/
SELECT SUM(t.sales_amount) as total_revenue FROM transactions t
INNER JOIN date d ON t.order_date = d.date 
where d.year=2020 and d.month_name = "February" and t.market_code = "Mark002";