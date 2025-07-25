import mysql.connector

try:
   mydb = mysql.connector.connect(
       host="localhost",
       user="root",
       password="123456",
       database="yourdatabase"
)

   mycursor = mydb.cursor()


   mycursor.execute("SHOW TABLES;")
   tables = mycursor.fetchall()

   print("Tables in alx_book_store:")
   
   print("Tables in alx_book_store")
   for table in tables:
    print(table[0])

except mysql.connector.Error as err:
    print(f"Error: {err}")


finally:
    if 'mycursor' in locals():
        mycursor.close()
    if 'mydb' in locals() and mydb.is_connected():
        mydb.close()





