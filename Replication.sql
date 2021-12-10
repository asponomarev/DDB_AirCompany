GRANT REPLICATION SLAVE ON *.* TO 'slave_user'@'%' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
USE avia;
FLUSH TABLES WITH READ LOCK;
SHOW MASTER STATUS;

-- в конфигурационный файл добавил:
-- # ID сервера
-- server-id = 1
-- # путь к бинарному логу
-- log_bin = /var/log/mysql/mysql-bin.log
-- # название бд
-- binlog_do_db = avia
-- На слейве:

CHANGE MASTER TO MASTER_HOST='192.168.56.1', MASTER_USER='slave_user', MASTER_PASSWORD='password',
MASTER_LOG_FILE = 'mysql-bin.000001', MASTER_LOG_POS = 107;
START SLAVE;
SHOW SLAVE STATUS;

-- в конфигурационный файл добавил:
-- # ID Слейва
-- server-id = 2
-- # Путь к relay логу
-- relay-log = /var/log/mysql/mysql-relay-bin.log
-- # Путь к bin логу на Мастере
-- log_bin = /var/log/mysql/mysql-bin.log
-- # База данных
-- binlog_do_db = avia 