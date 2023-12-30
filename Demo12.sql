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

insert into customer values(11,"Omkar","Pune", 54321,"saving"),
(12,"Ajinkya","Wagholi", 12345,"current"),
(13,"Jaydeep","Solapur", 78965,"zero balance"),
(14,"Suraj","Mumbai", 76543,"saving");

insert into transactions values(01,1200,'2023-01-02',12);
insert into transactions values(02,1500,'2023-01-12',11),(03,1900,'2023-02-02',14),
(04,2100,'2023-02-08',13),(05,1700,'2023-02-09',11),
(06,2500,'2023-01-02',14),(07,3200,'2023-03-09',12);


select*from customer;