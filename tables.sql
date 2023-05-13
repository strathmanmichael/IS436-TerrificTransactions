alter table items rename column iid to item_id;

create table vendor (
vendor_id int auto_increment primary key,
vendor_name varchar(255),
vendor_email varchar(255),
vendor_phone decimal(10)
);

create table customer (
customer_id int auto_increment primary key,
customer_name varchar(255),
customer_email varchar(255),
customer_address varchar(255),
customer_city varchar(255),
customer_zip decimal(5),
customer_state char(2)
);

create table orders (
order_id int auto_increment primary key,
rec_id int,
customer_id int,
order_total decimal(8.2),
order_date timestamp,
foreign key rec_id references recommendation(rec_id),
foreign key customer_id references customer(customer_id)
);


create table recommendation (
rec_id int auto_increment primary key,
item_id int,
customer_id int,
order_id int,
order_date date,
foreign key item_id references items(item_id),
foreign key customer_id references customer(custoner_id),
foreign key order_id references orders(order_id)
);

create table orders_list (
order_id int,
item_id int,
quantity int,
primary key (order_id, item_id),
foreign key order_id references orders(order_id),
foreign key item_id references items(item_id)
);

create table payment (
payment_id int auto_increment primary key,
customer_id int,
payment_method varchar(255),
payment_amount decimal(38,2),
foreign key customer_id references customer(customer_id)
);


create table sale (
sale_id int auto_increment primary key,
order_id int,
payment_id int,
foreign key order_id references orders(order_id),
foreign key payment_id references payment(payment_id)
);

create table shipment (
shipment_id int auto_increment primary key,
order_id int,
shipment_date date,
shipment_address varchar(255),
shipment_city varchar(50),
shipment_state char(2),
shipment_zip decimal(5),
foreign key order_id references orders(order_id)
);