# Create schema
create schema homework;

# Select schema homework
use homework;

# Create table with name, surname, age as primary key
create table PERSONS (
    name varchar(255),
    surname varchar(255),
    age int,
    phone_number varchar(15),
    city_of_living varchar(50),

    primary key (name, surname, age)
);

# Fill the table
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('alex', 'davinci', '18', '8-800-555-55-55', 'CHEBOKSARI');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('khal', 'suriname', '99', '6-666-666-66-66', 'MOSCOW');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Tug', 'Zlatov', '55', '7-777-777-77-77', 'MOSCOW');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Svetoslav', 'Moguchii', '99', '8-765-432-12-34', 'ROSTOV');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Vergo', 'Abidjon', '35', '8-943-123-33-44', 'KRASNODAR');

# Get everyone from MOSCOW
SELECT name, surname FROM PERSONS
WHERE city_of_living='MOSCOW';

# Get everyone older than 27 in descending order
select * from PERSONS
where age > 27
order by age desc;
