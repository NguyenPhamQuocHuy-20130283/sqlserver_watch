#!/bin/bash
# Start SQL Server in background
/opt/mssql/bin/sqlservr &

# Chờ SQL Server khởi động (10–20s)
sleep 20s

# Khôi phục DB từ backup
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "YourStrong!Passw0rd" -i /usr/src/app/init-db.sql

# Giữ container chạy
wait
