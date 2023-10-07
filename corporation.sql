-- 1 (Создайте базу данных corporation)

CREATE DATABASE corporation;

USE corporation;

-- 2 (Создайте таблицу employees)

CREATE TABLE
    employees (
        id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        birth_date DATE,
        gender ENUM('male', 'female')
    );

-- 3 (Добавьте колонку "salary" в таблицу employees)

ALTER TABLE employees ADD COLUMN salary DECIMAL(10, 2);

DESCRIBE corporation.employees;

-- 4 (Добавьте несколько сотрудников)

INSERT INTO
    employees(
        first_name,
        last_name,
        birth_date,
        gender,
        salary
    )
VALUES (
        'Maria',
        'Petrova',
        '1990-05-12',
        'female',
        8000
    ), (
        'Nikolay',
        'Sokolov',
        '1997-05-30',
        'male',
        14000
    ), (
        'Svetlana',
        'Ivanova',
        '1993-11-12',
        'female',
        8000
    ), (
        'Andrey',
        'Kuznetsov',
        '1992-02-25',
        'male',
        9000
    ), (
        'Yelena',
        'Smirnova',
        '1989-07-03',
        'female',
        6000
    ), (
        'Sergey',
        'Ivanov',
        '1984-09-08',
        'male',
        12000
    ), (
        'Elena',
        'Petrova',
        '1991-03-17',
        'female',
        18000
    ), (
        'Dmitri',
        'Smirnov',
        '1969-12-22',
        'male',
        11000
    ), (
        'Olga',
        'Kuznetsova',
        '1990-06-14',
        'female',
        6000
    );

-- 5 (Получите всех сотрудников)

SELECT * FROM employees;

-- 6 (Получите всех сотрудников и отсортируйте по зарплате от наибольшей к наименьшей)

SELECT * FROM employees ORDER BY salary DESC;

-- 7 (Получите всех сотрудников и отсортируйте по полу, а если у кого одинаковый пол – сортируйте по имени)

SELECT * FROM employees ORDER BY gender DESC, first_name ASC;

-- 8 (Получите только имена и зарплаты сотрудников, ограничьте количество результатов до 2)

SELECT first_name, last_name, salary FROM employees LIMIT 2;

-- 9 (Получите список уникальных статей сотрудников (пол))

SELECT DISTINCT gender FROM employees;

-- 10 (Получите мужчин, родившихся после 1970 года и с зарплатой от $10000)

SELECT *
FROM employees
WHERE
    gender = 'male'
    AND birth_date > '1970-12-31'
    AND salary >= 10000;