# db2_lab2
Боднар Е.В. , Група КМ-82, Варіант 10

Порівняти найкращий бал з фізики у 2020 та 2019 роках (у кожному регіоні) серед тих, кому було зараховано тест.

Для запуску програми необхідний встановленний Docker, а також python не нижче 3-ї версії з модулем psycopg2, який можна встановити командою pip install psycopg2.

Інструкція по запуску:
Створення бази даних з нуля:
Завантажити код репозиторію собі на комп'ютер.
Відкрити термінал в папці проекту.
Запустити команду docker-compose up.
flyway створить нову структуру бази даних в схемі migration.
Виконати команду docker-compose down в іншому терміналі для зупинки контейнерів.
Мігрування існуючої бази даних з Лабораторної роботи №1:
При відсутності заповненої бази даних виконати Лабораторну роботу №1.
Завантажити код цього репозиторію собі на комп'ютер.
Відкрити термінал в папці проекту.
Запустити команду docker-compose up.
flyway створить нову структуру бази даних в схемі migration та перенесе всі дані.
Після завершення попереднього пункту (Дочекатися логу flyway exited with code 0) запустити команду python result.py.
Створиться файл result.csv з результатами індивідуального завдання .
Виконати команду docker-compose down в іншому терміналі для зупинки контейнерів.
