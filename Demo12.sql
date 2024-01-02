create database project;

create table customer(
cust_id int primary key not null,
cust_name varchar(20) not null,
cust_city varchar(20),
cust_phone int(10) ,
acc_type varchar(20)
); 

create table transactions (trans_id int not null ,
trans_amt int ,
trans_date date,
cust_id int references customer(cust_id) 
);
