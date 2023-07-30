# Create schema
create schema homework;

# Select schema homework
use homework;

create table CUSTOMERS
(
    id           int auto_increment,
    name         varchar(255),
    surname      varchar(255),
    age          int,
    phone_number varchar(15),

    primary key (id)
);

create table ORDERS
(
    id           int auto_increment,
    date         varchar(255),
    customer_id  int,
    product_name varchar(255),
    amount       int,

    primary key (id),
    foreign key (customer_id) references CUSTOMERS (id)
);

select product_name
from ORDERS
         join CUSTOMERS
              on CUSTOMERS.id = ORDERS.customer_id
where LOWER(name) = 'alexey';
