--Удаление объектов базы
--Удаление таблиц
DROP TABLE IF EXISTS department CASCADE;
DROP TABLE IF EXISTS positions CASCADE;
DROP TABLE IF EXISTS official CASCADE;
DROP TABLE IF EXISTS personal CASCADE;
--Удаление типов данных
DROP TYPE IF EXISTS children CASCADE;
DROP TYPE IF EXISTS education CASCADE;
--Создание типов данных
CREATE TYPE children AS ENUM ('Нет', 'Один или двое', 'Трое или больше');
CREATE TYPE education AS ENUM('Среднее', 'Средне специальное', 'Высшее');
--Создание таблицы отделы
CREATE TABLE department (
    department_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    department_Name VARCHAR(100) NOT NULL,
    head_Department VARCHAR(50) NOT NULL,
    subject VARCHAR
);
--Создание таблицы Должности
CREATE TABLE positions (
    post_ID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    post VARCHAR(50) NOT NULL,
    salary MONEY NOT NULL
);
--Создание таблицы служебных данных
CREATE TABLE official (
    id_Tabel INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    surname VARCHAR(50) NOT NULL,
    hiring DATE NOT NULL DEFAULT CURRENT_DATE CHECK(hiring <= CURRENT_DATE),
    post_ID INT NOT NULL,
    department INT NOT NULL,
    FOREIGN KEY (post_ID) REFERENCES positions(post_id),
    FOREIGN KEY (department) REFERENCES department(department_id)
);
--Создание таблицы Персональных данных
CREATE TABLE personal (
    id_tabel INT PRIMARY KEY NOT NULL,
    surname VARCHAR(50) NOT NULL,
    name VARCHAR(30) NOT NULL,
    middle_name VARCHAR(50) NOT NULL,
    birth TIMESTAMP WITH TIME Zone NOT NULL,
    home_address VARCHAR (100) NOT NULL,
    home_phone VARCHAR(20),
    marital_status BOOLEAN NOT NULL,
    children children NOT NULL,
    education education NOT NULL,
    autobiography VARCHAR,
    FOREIGN KEY (id_tabel) REFERENCES official(id_tabel)
);