# Melakukan import mysql connector
import mysql.connector

# Melakukan percobaan koneksi
conn = mysql.connector.connect(
    host="your_host",
    user="your_username",
    password="your_password",
    database="your_database_name"
)

# Membuat object cursor sebagai penanda
cursor = conn.cursor()

# Deklarasi SQL Query untuk memasukkan record ke Database (KARYAWAN)
insert_sql = (
    "INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)"
    "VALUES (%s, %s, %s, %s, %s)"
)
values = ("John", "Doe", 30, "Male", 50000)  # Replace with your actual data

try:
    # Eksekusi SQL Command 
    cursor.execute(insert_sql, values)

    # Melakukan perubahan (commit) pada Database
    conn.commit()
except Exception as e:
    # Roll back apabila ada issue
    print(f"Error: {e}")
    conn.rollback()

# Menutup koneksi
cursor.close()
conn.close()
