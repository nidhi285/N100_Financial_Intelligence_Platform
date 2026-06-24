import sqlite3

conn = sqlite3.connect("nifty100.db")
conn.execute("PRAGMA foreign_keys = ON")

print("Foreign keys enabled successfully")