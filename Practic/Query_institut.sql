-- Создать запрос, содержащий фамилии, должности и величину оклада сотрудников 
-- заданного отдела. Сортировка записей – по должностям, а для одинаковых
-- должностей – по фамилиям.
SELECT o.surname,
    p.post,
    p.salary
from official o
    JOIN positions p ON o.post_id = p.post_id
WHERE o.department = 4
ORDER BY p.post,
    o.surname;
-- Создать запрос, содержащий следующие сведения о сотрудниках со средним и
-- средним специальным образованием: названия отделов, должности, фамилии,
-- образование. Сортировка записей – по отделам.
SELECT d.department_name,
    pos.post,
    of.surname,
    p.education
FROM official of
    JOIN personal p ON of.id_tabel = p.id_tabel
    JOIN department d ON of.department = d.department_id
    JOIN positions pos ON of.post_id = pos.post_id
WHERE p.education IN ('Среднее', 'Средне специальное')
ORDER BY d.department_name;
-- Создать запрос для отбора сведений о сотрудниках, возраст которых
-- меньше заданного. Поля запроса: Фамилия, Имя, Отчество, Название отдела,
-- Должность, Образование, Возраст. Сортировка записей – по возрасту.
SELECT p.surname,
    p.name,
    p.middle_name,
    pos.post,
    EXTRACT(
        YEAR
        FROM AGE(NOW(), p.birth)
    ) AS Age
FROM personal p
    JOIN official o ON p.id_tabel = o.id_tabel
    JOIN department d ON o.department = d.department_id
    JOIN positions pos ON o.post_id = pos.post_id
WHERE EXTRACT(
        YEAR
        FROM AGE(NOW(), p.birth)
    ) < 50
ORDER BY Age;
-- Создать запрос Расчет зарплаты с полями Название отдела, ФамилияИнициалы,
-- Должность, Стаж, Оклад, Надбавка, Налог, К выдаче.Поле ФамилияИнициалы 
-- составляется из полей Фамилия, Имя и Отчество с помощью оператора конкатенации
-- (&).Стаж рассчитывается как частное от целочисленного деления разности между текущей датой и датой найма на 365
-- Надбавка составляет 5% от оклада, если стаж работы от 5 до 10 лет, и 10% от
-- оклада, если стаж больше 10 лет.Налог составляет 13% от суммы оклада и надбавки.
-- Поле К выдаче рассчитывается как сумма оклада и надбавки минус налог.
SELECT p.surname || ' ' || SUBSTRING(
        p.name
        FROM 1 FOR 1
    ) || '.' || SUBSTRING (
        p.middle_name
        FROM 1 FOR 1
    ) AS ФИО,
    pos.post AS Должность,
    EXTRACT(
        YEAR
        FROM AGE (NOW(), o.hiring)
    ) AS "Стаж",
    pos.salary AS "Оклад",
    CASE
        WHEN EXTRACT(
            YEAR
            FROM AGE (NOW(), o.hiring)
        ) BETWEEN 5 AND 10 THEN CAST(salary AS numeric(10, 2)) * 0.05
        WHEN EXTRACT(
            YEAR
            FROM AGE (NOW(), o.hiring)
        ) > 10 THEN CAST(salary AS numeric(10, 2)) * 0.1
        ELSE 0
    END AS "Надбавка",
    '13' AS "Налог",
    CASE
        WHEN EXTRACT(
            YEAR
            FROM AGE (NOW(), o.hiring)
        ) BETWEEN 5 AND 10 THEN (
            CAST(salary AS numeric(10, 2)) * 0.05 + CAST(salary AS numeric(10, 2))
        ) * 0.87
        WHEN EXTRACT(
            YEAR
            FROM AGE (NOW(), o.hiring)
        ) > 10 THEN (
            CAST(salary AS numeric(10, 2)) * 0.1 + CAST(salary AS numeric(10, 2))
        ) * 0.87
        ELSE CAST(salary AS numeric(10, 2)) * 0.87
    END AS "К выдаче"
FROM personal p
    JOIN official o ON p.id_tabel = o.id_tabel
    JOIN positions pos ON o.post_id = pos.post_id
ORDER BY p.surname -- Создать итоговый запрос, вычисляющий количество сотрудников в каждом отделе.
    -- Группировка – по полю Название отдела. Для подсчета количества сотрудников
    -- использовать функцию Count (например, в поле Фамилия).
SELECT d.department_Name,
    count(o.id_tabel) AS Сотрудники
FROM official o
    JOIN department d ON o.department = d.department_id
GROUP BY d.department_name -- Создать итоговый запрос, вычисляющий количество сотрудников в каждом отделе
    -- со стажем больше 10 лет.
SELECT d.department_Name,
    count(o.id_tabel) AS Сотрудники
FROM official o
    JOIN department d ON o.department = d.department_id
WHERE EXTRACT(
        YEAR
        FROM AGE (NOW(), o.hiring)
    ) > 10
GROUP BY d.department_name