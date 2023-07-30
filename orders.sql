create table ORDERS (
	id int auto_increment,
	date varchar(255),
	customer_id int,
	product_name int varchar(255),
	amount int,

	primary key(id),
	foreign key(customer_id) references CUSTOMERS(id)
);

