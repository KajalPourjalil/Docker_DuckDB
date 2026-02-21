import duckdb

con = duckdb.connect("mydb.db")

con.execute("CREATE TABLE IF NOT EXISTS students(id INTEGER, score INTEGER)")
con.execute("INSERT INTO students VALUES (1, 85)")

result = con.execute("SELECT * FROM students").fetchall()

print("Query result:", result)