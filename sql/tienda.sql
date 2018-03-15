DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda;

CREATE TABLE usuario (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(128) NOT NULL,
  nombre VARCHAR(128) NOT NULL
);

CREATE TABLE fabricante (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DOUBLE NOT NULL,
  codigo_fabricante INT UNSIGNED NOT NULL,
  imagen VARCHAR(256) NOT NULL,
  descripcion VARCHAR(512) NOT NULL,
  FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);

INSERT INTO usuario VALUES (1, 'usuario@usuario.es', 'f8032d5cae3de20fcec887f395ec9a6a', 'Usuario');
INSERT INTO usuario VALUES (2, 'diego@diego.es', '4fb845c67d91bcb3178498fc6fe1fedc', 'Diego');

INSERT INTO fabricante VALUES(1,'Asus');
INSERT INTO fabricante VALUES(2,'Lenovo');
INSERT INTO fabricante VALUES(3,'Hewlett-Packard');
INSERT INTO fabricante VALUES(4,'Samsung');
INSERT INTO fabricante VALUES(5,'Seagate');
INSERT INTO fabricante VALUES(6,'Crucial');
INSERT INTO fabricante VALUES(7,'Gigabyte');
INSERT INTO fabricante VALUES(8,'Huawei');
INSERT INTO fabricante VALUES(9,'Xiaomi');

INSERT INTO producto VALUES(1,'Disco duro SATA3 1TB', 86, 5, 'images/ddst.jpeg', 'Disco duro SATA3 1TB');
INSERT INTO producto VALUES(2,'Memoria RAM DDR4 8GB', 120, 6, 'images/ram.jpeg', 'Memoria RAM DDR4 8GB');
INSERT INTO producto VALUES(3,'Disco SSD 1 TB', 150, 4, 'images/ssd.jpeg', 'Disco SSD 1 TB');
INSERT INTO producto VALUES(4,'GeForce GTX 1050Ti',185, 7, 'images/gf1.jpeg', 'GeForce GTX 1050Ti');
INSERT INTO producto VALUES(5,'GeForce GTX 1080 Xtreme',755, 6, 'images/gf2.jpeg', 'GeForce GTX 1080 Xtreme');
INSERT INTO producto VALUES(6,'Monitor 24 LED Full HD',202, 1, 'images/monitor1.jpeg', 'Monitor 24 LED Full HD');
INSERT INTO producto VALUES(7,'Monitor 27 LED Full HD',245, 1, 'images/monitor2.jpeg', 'Monitor 27 LED Full HD');
INSERT INTO producto VALUES(8,'Portatil Yoga 520',559, 2, 'images/pc1.jpeg', 'Portatil Yoga 520');
INSERT INTO producto VALUES(9,'Portatil Ideapd 320',444, 2, 'images/pc2.jpeg', 'Portatil Ideapd 320');
INSERT INTO producto VALUES(10,'Impresora HP Deskjet 3720',59, 3, 'images/hp1.jpeg', 'Impresora HP Deskjet 3720');
INSERT INTO producto VALUES(11,'Impresora HP Laserjet Pro M26nw',180, 3, 'images/hp2.jpeg', 'Impresora HP Laserjet Pro M26nw');
INSERT INTO producto VALUES(12,'Huawei MateBook D Intel Core i5-7200U/8GB/256GB SSD/15.6',870, 8, 'images/pc3.jpg', 'Huawei MateBook D Intel Core i5-7200U/8GB/256GB SSD/15.6"');
INSERT INTO producto VALUES(13,'Xiaomi Mi Wireless Raton Inalambrico Negro',12, 9, 'images/raton.jpg', 'Xiaomi Mi Wireless Ratpn Inalambrico Negro');