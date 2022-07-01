import mysql.connector as sql

# Akses ke database mysql server
database = sql.connect(
    host='localhost',
    user='root',
    password='',
    database='bank'
)

# Insert data ke database (Create)
insert = database.cursor()
dataInsert = 'insert into nasabah(norek, nama, jenisKelamin, alamat, noTelp, saldo) VALUES (%s, %s, %s, %s, %s, %s)'
values = (124876, 'Julie', 'P', 'Bogor', '0812154', 456800)

insert.execute(dataInsert, values)
database.commit()

# Update data di database (Update)
update = database.cursor()
dataUpdate = 'update nasabah set alamat=%s where norek = %s'
data = ('Depok', 125486)

update.execute(dataUpdate, data)
database.commit()

# Delete data di database (Delete)
delete = database.cursor()
delData = 'delete from nasabah where norek=%s'
data = (548641,)

delete.execute(delData, data)
database.commit()

# Membaca data (READ)
read = database.cursor()
read.execute('select * from nasabah')

result = read.fetchall()
for data in result:
    print(data)
