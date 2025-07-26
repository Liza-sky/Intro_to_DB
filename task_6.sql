import mysql.connector

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="123456",
        database="alx_book_store"
)

    mycursor = mydb.cursor()

USE alx_book_store;
mycursor.execute("USE alx_book_store")


sql = "INSERT INTO Customer (customer_id, customer_name, email, address) VALUES (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness  Ave.'),
(3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness  Ave.'),
(4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness  Ave.');"
val = (2, 'Blessing Malik',')
mycursor.execute(sql, val)


mydb.commit()
 print("Customer inserted successfully.")

except mysql.connector.Error as err:
    print(f"Error: {err}")

finally:
    if 'mycursor' in locals():
        mycursor.close()
    if 'mydb' in locals() and mydb.is_connected():
        mydb.close()'


