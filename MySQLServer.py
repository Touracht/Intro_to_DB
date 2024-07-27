import mysql.connector
try:
    mydb = mysql.connector.connect(
    host="localhost",
    user="Tou",
    password="12345")

    cursor = mydb.cursor()
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    mydb.commit()
    print("Database 'alx_book_store' created successfully!")
    cursor.close()
    mydb.close()
except mysql.connector.Error as e:
    print(e)