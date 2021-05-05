import psycopg2
import csv

#підключення до бази
def create_connection(db_name, db_user, db_password, db_host):
    connection = None
    try:
        connection = psycopg2.connect(
            database=db_name,
            user=db_user,
            password=db_password,
            host=db_host,
        )
        print("З'єднання з БД  успішне")
    except Error as err:
        print(f"{err}")
    return connection

connect = create_connect("postgres", "postgres", "mydb", "localhost", )


def statistical_query():
    select_query = '''
    SELECT Location.Region, Result.Year, max(Result.Mark_100)
    FROM Result JOIN Participant ON
        Result.OutID = Participant.ID
    JOIN Location ON
        Participant.loc_id = Location.loc_id
    WHERE Result.Test_Name = 'Фізика' AND
        Result.TestResult = 'Зараховано'
    GROUP BY Location.Region, Result.Year
    '''
    cursor.execute(select_query)

    with open('result_lab2.csv', 'w', encoding="utf-8") as new_csv_file:
        csv_writer = csv.writer(new_csv_file)
        csv_writer.writerow(['Область', 'Рік', 'Максимальний бал з фізики'])
        for row in cursor:
            csv_writer.writerow(row)


statistical_query()



#conn.commit()
cursor.close()
conn.close()