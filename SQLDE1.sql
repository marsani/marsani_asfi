--
SELECT COUNT(*) AS THE_NUMBER_OF_STUDENTS FROM students where firstName like 'John%'

--Write a query that selects userId and average session duration for each user who has more than one session.
select userId,avg(duration) as average from sessions group by userId having avg(duration)>1

--Modify the provided SQLite create table statement so that:
CREATE TABLE users_roles (
  userId INTEGER,
  roleId INTEGER,
  FOREIGN KEY (userId) REFERENCES users(id),
  FOREIGN KEY (roleId) REFERENCES roles(id)
);

--Write a query that selects the item name and the name of its seller for each item that belongs to a seller with a rating greater than 4.
select a.name as item_name,b.name as name_of_seller
from items a, sellers b 
where a.sellerId=b.id and b.rating>4

--Write a query that updates the field 'year' of every faulty record to 2015.
update enrollments
set year=2015
where id between 20 and 100

--Write a query that select all distinct pet names.
SELECT DISTINCT(cats.name) as name FROM cats UNION
SELECT DISTINCT(dogs.name) FROM dogs

-- Write only the SQL statement that solves the problem and nothing else.
SELECT name FROM `employees` WHERE managerId  IN(SELECT id from employees)
