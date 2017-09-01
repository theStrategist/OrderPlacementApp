import pymysql

conn = pymysql.connect(host = "192.168.1.105",
                           user = "sapta",
                           passwd = "sapta123",
                           db = "pythondb")

cur = conn.cursor()
cur.execute("SELECT * from customer")

for r in cur:
    print(r)
cur.close()
conn.close()