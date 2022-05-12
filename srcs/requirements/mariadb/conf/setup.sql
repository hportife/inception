ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';
CREATE DATABASE wordpress;
CREATE USER 'hportife'@'%' IDENTIFIED BY 'root';
GRANT ALL ON wordpress.* TO 'hportife'@'%';
FLUSH PRIVILEGES;
