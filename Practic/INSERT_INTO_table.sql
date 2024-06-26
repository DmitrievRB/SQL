--Внесение данных в таблицу Должностей(positions)
INSERT INTO positions (post, salary)
VALUES ('Ректор', 50000),
    ('Зав.кафедрой', 40000),
    ('Декан', 35000),
    ('Лаборант', 30000),
    ('Охранник', 32000);
--Внесение данных в таблицу отделы
INSERT INTO department (
        department_name,
        head_department,
        subject
    )
VALUES (
        'Гуманитарные науки',
        'Сидоров',
        'Место где можно поболтать'
    ),
    (
        'Социальные дисциплины',
        'Иванова',
        'Кто прав, кто виноват'
    ),
    (
        'Прикладные дисциплины',
        'Петров',
        'Как сделать жизнь лучше'
    ),
    (
        'Администрация',
        'Бархударов',
        'Социализм-это контроль и учет'
    );
--Внесение данных в таблицу Служебных сведений
INSERT INTO official (surname, hiring, post_id, department)
VALUES ('Сидоров', '2000.11.03', 2, 1),
    ('Иванова', '2020.07.03', 2, 2),
    ('Петров', '2017.01.03', 2, 3),
    ('Бархударов', '2020.10.03', 1, 4),
    ('Петухов', '1999.11.03', 5, 4),
    ('Свиридова', '2022.11.03', 3, 1),
    ('Панфилова', '2022.11.03', 4, 1),
    ('Нефедова', '2022.11.03', 4, 1),
    ('Викулов', '2022.11.03', 5, 4),
    ('Грачев', '2022.11.03', 5, 4),
    ('Морозов', '2022.11.03', 3, 2),
    ('Шнайдер', '2022.11.03', 4, 2),
    ('Прилепина', '2022.11.03', 4, 2),
    ('Кулешов', '2022.01.03', 3, 3),
    ('Пастухов', '2022.01.03', 4, 3),
    ('Пастухова', '2022.01.03', 4, 3);
--Внесение данных в таблицу Персональные данные
INSERT INTO personal (
        id_tabel,
        surname,
        name,
        middle_name,
        birth,
        home_address,
        home_phone,
        marital_status,
        children,
        education,
        autobiography
    )
VALUES (
        1,
        'Сидоров',
        'Сергей',
        'Сергеевич',
        '1970.08.04',
        'г.Москва Шаболовка 31',
        '+7(078)800-20-10',
        TRUE,
        'Один или двое',
        'Высшее',
        'srth;lrthns;rtnhg'
    ),
    (
        2,
        'Иванова',
        'Мария',
        'Петровна',
        '1971.08.04',
        'г.Москва Шаболовка 10',
        '+7(078)800-20-11',
        FALSE,
        'Нет',
        'Высшее',
        'srth;lrthns;rtnhg'
    ),
    (
        3,
        'Петров',
        'Андрей',
        'Васильевич',
        '1972.08.04',
        'г.Москва Шаболовка 11',
        '+7(078)800-20-12',
        TRUE,
        'Один или двое',
        'Высшее',
        'srth;lrthns;rtnhg'
    ),
    (
        4,
        'Бархударов',
        'Марат',
        'Альбертович',
        '1973.08.04',
        'г.Москва Шаболовка 12',
        '+7(078)800-20-13',
        TRUE,
        'Трое или больше',
        'Высшее',
        'srth;lrthns;rtnhg'
    ),
    (
        5,
        'Петухов',
        'Иван',
        'Васильевич',
        '1974.08.04',
        'г.Москва Шаболовка 13',
        '+7(078)800-20-14',
        FALSE,
        'Нет',
        'Высшее',
        'srth;lrthns;rtnhg'
    ),
    (
        6,
        'Свиридова',
        'Алена',
        'Сергеевна',
        '1975.08.04',
        'г.Москва Шаболовка 37',
        '+7(078)800-20-15',
        TRUE,
        'Один или двое',
        'Высшее',
        'srth;lrthns;rtnhg'
    ),
    (
        7,
        'Панфилова',
        'Елена',
        'Викторовна',
        '1976.09.04',
        'г.Москва Шаболовка 40',
        '+7(078)800-20-16',
        FALSE,
        'Один или двое',
        'Высшее',
        'srth;lrthns;rtnhg'
    ),
    (
        8,
        'Нефедова',
        'Василиса',
        'Степановна',
        '1977.08.04',
        'г.Москва Шаболовка 35',
        '+7(078)800-20-17',
        TRUE,
        'Трое или больше',
        'Среднее',
        'srth;lrthns;rtnhg'
    ),
    (
        9,
        'Викулов',
        'Генадий',
        'Генадьевич',
        '1979.08.04',
        'г.Москва Шаболовка 41',
        '+7(078)800-20-18',
        TRUE,
        'Один или двое',
        'Высшее',
        'srth;lrthns;rtnhg'
    ),
    (
        10,
        'Грачев',
        'Александр',
        'Сергеевич',
        '1978.08.04',
        'г.Москва Шаболовка 33',
        '+7(078)800-20-20',
        FALSE,
        'Нет',
        'Высшее',
        'srth;lrthns;rtnhg'
    ),
    (
        11,
        'Морозов',
        'Сергей',
        'Александрович',
        '1970.07.04',
        'г.Москва Шаболовка 36',
        '+7(078)800-20-21',
        TRUE,
        'Один или двое',
        'Средне специальное',
        'srth;lrthns;rtnhg'
    ),
    (
        12,
        'Шнайдер',
        'Гертруда',
        'Апполинарьевна',
        '1972.08.04',
        'г.Москва Шаболовка 17',
        '+7(078)800-20-22',
        FALSE,
        'Один или двое',
        'Высшее',
        'srth;lrthns;rtnhg'
    ),
    (
        13,
        'Прилепина',
        'Елена',
        'Васильевна',
        '1970.08.09',
        'г.Москва Шаболовка 20',
        '+7(078)800-20-23',
        TRUE,
        'Один или двое',
        'Высшее',
        'srth;lrthns;rtnhg'
    ),
    (
        14,
        'Кулешов',
        'Василий',
        'Васильевич',
        '1970.08.09',
        'г.Москва Шаболовка 20',
        '+7(078)800-20-23',
        TRUE,
        'Один или двое',
        'Высшее',
        'srth;lrthns;rtnhg'
    ),
    (
        15,
        'Пастухов',
        'Николай',
        'Генадьевич',
        '1970.03.04',
        'г.Москва Шаболовка 44',
        '+7(078)800-20-25',
        TRUE,
        'Один или двое',
        'Среднее',
        'srth;lrthns;rtnhg'
    ),
    (
        16,
        'Пастухова',
        'Ольга',
        'Владимировна',
        '1970.06.04',
        'г.Москва Шаболовка 26',
        '+7(078)800-20-26',
        TRUE,
        'Трое или больше',
        'Средне специальное',
        'srth;lrthns;rtnhg'
    );