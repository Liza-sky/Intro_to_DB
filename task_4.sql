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

sql = "SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, EXTRA"
val = ("John", "john@example.com")
mycursor.execute(sql, val)
mydb.commit()  # Commit the changes

  mycursor.execute("SELECT * FROM INFORMATION_SCHEMA.COLUMNS")
  myresult = mycursor.fetchall()

  for row in myresult:
  print(row)

  sql = "UPDATE TABLE_NAME = 'Books' AND TABLE_SCHEMA = 'alx_books_store';
  val = ("Jane", 1)
  mycursor.execute(sql, val)
  mydb.commit() # Commit the changes




