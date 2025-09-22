-- Tạo database mới
RESTORE DATABASE DongHo3
FROM DISK = '/usr/src/app/DongHo3.bak'
WITH MOVE 'DongHo2' TO '/var/opt/mssql/data/DongHo2.mdf',
     MOVE 'DongHo2_log' TO '/var/opt/mssql/data/DongHo2_log.ldf',
     REPLACE;
GO
