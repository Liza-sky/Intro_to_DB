import mysql.connector


    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="123456",
        database="yourdatabase"
)

    mycursor = mydb.cursor()

USE alx_book_store;
mycursor.execute("USE alx_book_store")

SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, EXTRA
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Books' AND TABLE_SCHEMA = 'alx_book_store';