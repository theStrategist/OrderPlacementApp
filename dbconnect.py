import pymysql


def connection():
    conn = pymysql.connect(host="192.168.1.105",
                           user="sapta",
                           passwd="sapta123",
                           db="pythondb")
    c = conn.cursor()
    return c, conn
