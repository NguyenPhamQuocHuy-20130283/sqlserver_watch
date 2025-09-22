# Image SQL Server 2022 Express
FROM mcr.microsoft.com/mssql/server:2022-latest

# Thiết lập biến môi trường
ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=YourStrong!Passw0rd
ENV MSSQL_PID=Express

WORKDIR /var/opt/mssql

# Copy script & backup vào container
COPY entrypoint.sh /usr/src/app/entrypoint.sh
COPY init-db.sql /usr/src/app/init-db.sql
COPY backup.bak /usr/src/app/DongHo3.bak

RUN chmod +x /usr/src/app/entrypoint.sh

# Expose SQL Server port
EXPOSE 1433

# Khởi chạy entrypoint
CMD ["/usr/src/app/entrypoint.sh"]
