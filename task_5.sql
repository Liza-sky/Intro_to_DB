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

INSERT INTO Customer (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');