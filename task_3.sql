import mysql.connector


mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="123456",
    database="yourdatabase"
)

mycursor = mydb.cursor()
mycursor.execute("USE alx_book_store")

sql = """
Show Tables;
"""
mycursor.execute(sql)
tables = mycursor.fetchall()




