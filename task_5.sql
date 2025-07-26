import mysql.connector

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="123456",
        database="alx_book_store"
)

    mycursor = mydb.cursor()

# Remove redundant USE statement and assign SQL to a variable
sql = "INSERT INTO Customer (customer_id, customer_name, email, address) VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.')"
mycursor.execute(sql)
mydb.commit()
 