-- Question1- Identify the primary keys and foreign keys in maven movies db. Discuss the differences
-- The primary key is a unique or non-null key that uniquely identifies every record in a table or relation.
-- The foreign key is a group of one or more columns in a database to uniquely identify another database record in some other table to maintain the referential integrity. 
show tables;
desc actor;
-- actor_id is primary key and last name is foreign key
desc actor_award;
-- actor_award_id is primary key and last_name is foreign key
desc address;
-- address_id is primary key and city_id is foreign key
desc advisor;
-- advisor_id is primary key 
desc category;
-- cateogry_id is primary key
desc city;
-- city_id is primary key and country_id is foreign key
desc country;
-- country_id is primary key 
desc customer;
-- customer_id is primary key and store_id, last_name, address_id are foreign keys
desc film;
-- film_id is primary key and title, language_id, original_language_id are foreign keys
desc investor;
-- investor_id is primary key
desc language;
-- language_id is primary key
desc staff;
-- staff_id is primary key and address-id, store_id, are foreign keys

-- diff between priamry key and foreign key
-- A primary key constraint in the relational database acts as a unique identifier for every row in the table. In contrast, a foreign key constraint establishes a relationship between two different tables to uniquely identify a row of the same table or another table.
-- The primary key column does not store NULL values, whereas the foreign key can accept more than one NULL value.
-- Each table in a relational database can't define more than one primary key while we can specify multiple foreign keys in a table.

-- Question2- List all details of actors
select * from actor;

-- Question3- List all customer information from DB
select * from customer;

-- Question4- List different countries.
select distinct(country) from country;

-- Question5- Display all active customers.
select * from customer where active = 1;

-- Question6- List of all rental IDs for customer with ID 1.
select rental_id, customer_id  from rental where customer_id = 1;

-- Question7- Display all the films whose rental duration is greater than 5 .
select film_id, title, rental_duration from film where rental_duration > 5;

-- Question8- List the total number of films whose replacement cost is greater than $15 and less than $20
 select count(*) as total_number_of_films
from film
where replacement_cost > 15 and replacement_cost < 20;

-- Question9- Find the number of films whose rental rate is less than $1.
select count(*) as number_of_films from film where rental_rate < 1;

-- Question10- Display the count of unique first names of actors
select count(distinct first_name) as unique_first_name from actor;

-- Question11- Display the first 10 records from the customer table
select * from customer limit 10;

-- Question12- Display the first 3 records from the customer table whose first name starts with ‘b’.
select first_name from customer where first_name like "b%" limit 3;

-- Question13- Display the names of the first 5 movies which are rated as ‘G’.
select title, rating from film where rating = 'g' limit 5;

-- Question14- Find all customers whose first name starts with "a".
select first_name from customer where first_name like "a%";

-- Question15- Find all customers whose first name ends with "a".
select first_name from customer where first_name like "%a";

-- Question16- Display the list of first 4 cities which start and end with ‘a’ .
select city from city where city like "a%a" limit 4;

-- Question17- Find all customers whose first name have "NI" in any position.
select first_name from customer where first_name like "%ni%";

-- Question18- Find all customers whose first name have "r" in the second position .
select first_name from customer where first_name like "_r%";



-- Question19- Find all customers whose first name starts with "a" and are at least 5 characters in length
select first_name from customer where first_name like "a%" and length(first_name) >= 5;

-- Question20- Find all customers whose first name starts with "a" and ends with "o".
select first_name from customer where first_name like "a%o";

-- Question21- Get the films with pg and pg-13 rating using IN operator.
select title, rating from film where rating in('pg', 'pg-13');

-- Question22- Get the films with length between 50 to 100 using between operator
select title, length from film where  length between 50 and 100;

-- Question23- Get the top 50 actors using limit operator
select * from actor limit 50;

-- Question24- Get the distinct film ids from inventory table.
select distinct  film_id from inventory;

 
