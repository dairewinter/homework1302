CREATE DATABASE skypro

\c skypro

CREATE TABLE employee (

                          id BIGSERIAL NOT NULL PRIMARY KEY,

                          first_name VARCHAR(50) NOT NULL,

                          last_name VARCHAR(50) NOT NULL,

                          gender VARCHAR (6) NOT NULL,

                          age INT NOT NULL

);

INSERT INTO employee (

    first_name, last_name, gender, age)

VALUES ('Fedor', 'Dostoevsky', 'male', 30);

INSERT INTO employee (

    first_name, last_name, gender, age)

VALUES ('Alexander', 'Pushkin', 'male', 27);

INSERT INTO employee (

    first_name, last_name, gender, age)

VALUES ('Anna', 'Ahmatova', 'male', 20);

SELECT * FROM employee;

UPDATE employee SET age = 21 WHERE id = 3;

SELECT * FROM employee;

DELETE FROM employee WHERE id = 2;

SELECT * FROM employee;

INSERT INTO employee (

    first_name, last_name, gender, age)

VALUES ('Andrey', 'Bolkonsky', 'male', 32);

INSERT INTO employee (

    first_name, last_name, gender, age)

VALUES ('Tatyana', 'Larina', 'female', 17);

INSERT INTO employee (

    first_name, last_name, gender, age)

VALUES ('Natasha', 'Rostova', 'female', 30);
SELECT * FROM employee;

SELECT first_name AS имя,
       last_name  AS фамилия

FROM employee;

SELECT first_name, last_name, gender, age FROM employee

WHERE age < 30
   OR age > 50;

SELECT first_name, last_name, gender, age FROM employee

WHERE age > 30
  AND age < 50;

SELECT * FROM employee

ORDER BY last_name DESC;

SELECT * FROM employee

WHERE length(first_name) > 4;

UPDATE employee

SET first_name = 'Anna'
    SET first_name = 'Anna'
WHERE id = 3;

UPDATE employee
SET first_name ='Natasha'
    SET first_name = 'Natasha'
WHERE id = 5;

SELECT first_name AS Имя,
       sum(age)   AS Суммарный_возраст FROM employee
WHERE first_name = 'Anna'
   OR first_name = 'Natasha'

GROUP BY first_name;
GROUP BY Имя

    HAVING count(first_name) > 1;

SELECT first_name AS Имя,
       min(age) AS Минимальный_возраст
    min(age)   AS Минимальный_возраст FROM employee
GROUP BY first_name;

SELECT max(age)   AS Максимальный_возраст,
       first_name AS Имя

SELECT first_name AS Имя,
       max(age)   AS Максимальный_возраст FROM employee
WHERE first_name = 'Anna'
   OR first_name = 'Natasha'
group by first_name;
GROUP BY Имя
HAVING count(first_name) > 1
ORDER BY Максимальный_возраст;