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
  FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);
INSERT INTO usuario VALUES (1, 'usuario@usuario.es', 'f8032d5cae3de20fcec887f395ec9a6a', 'Usuario');

INSERT INTO usuario VALUES (2, 'pedro@pedro.es', '66632d5cae3de20fcec887f395ec9a6a', 'Pedro');
