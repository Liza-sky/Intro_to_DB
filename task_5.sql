import mysql.connector


    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="123456",
        database="alx_book_store"
)

    mycursor = mydb.cursor()


sql = "INSERT INTO Customer (customer_id, customer_name, email, address)"
val = (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');
mycursor.execute(sql, val)


mydb.commit()
 print("Customer inserted successfully.")

except mysql.connector.Error as err:
    print(f"Error: {err}")

finally:
    if 'mycursor' in locals():
        mycursor.close()
    if 'mydb' in locals() and mydb.is_connected():
        mydb.close()

