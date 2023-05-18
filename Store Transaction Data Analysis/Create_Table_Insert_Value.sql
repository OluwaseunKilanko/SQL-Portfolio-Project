-- Transaction table 
create table "transaction" (
  transaction_id int,
  customer_id int,
  purchase_date date, 
  store_location varchar(255), 
  quantity_purchased int,
  sales float,
  primary key (transaction_id)
 );

 insert into "transaction"
   (transaction_id, customer_id, purchase_date, store_location,
    quantity_purchased, sales)
 values
   (1, 1000, '2021-10-14', 'Richmond', 4, 10.51),
   (2, 1307, '2021-10-15', 'Fitzroy North', 5, 21.28),
   (3, 1343, '2021-10-15', 'Melbourne CBD', 9, 42.77),
   (4, 2373, '2021-10-16', 'Brunswick', 9, 53.96),
   (5, 2426, '2021-10-16', 'Kew', 7, 40.53),
   (6, 2987, '2021-10-17', 'Melbourne CBD', 3, 5.14);
 
-- Customer profile table 
create table customers (
  customer_id int, 
  customer_lifestage varchar(255),
  customer_premium varchar(255),
  primary key (customer_id)
 );
 
 insert into customers
   (customer_id, customer_lifestage, customer_premium)
 values
   (1000, 'Young singles/couples', 'Premium'),
   (1010, 'Retirees', 'Mainstream'),
   (1305, 'Older families', 'Premium'),
   (1307, 'Young families', 'Mainstream'),
   (1343, 'Young families', 'Budget'),
   (2000, 'Young singles/couples', 'Budget'),
   (2219, 'Young singles/couples', 'Premium'),
   (2373, 'Retirees', 'Budget'),
   (2426, 'Older families', 'Mainstream'),
   (2987, 'Young singles/couples', 'Budget');