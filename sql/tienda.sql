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

INSERT INTO producto VALUES(1,'Disco duro SATA3 1TB', 86, 5, 'images/ddst.jpeg', 'Versatiles, rapidas y fiables BarraCuda lidera la industria con las capacidades mas altas para ordenadores de sobremesa y portatiles. Las unidades de hasta 10 TB hacen que la cartera de productos BarraCuda sea una excelente opcion para actualizar su infraestructura tecnologica sea cual sea su presupuesto.');
INSERT INTO producto VALUES(2,'Memoria RAM DDR4 8GB', 120, 6, 'images/ram.jpeg', 'Una gama disenada para eliminar el LAG y tener una fluidez de juego mucho mayor en tu PC. Disfruta de su impuso instantaneo en el rendimiento y la estabilidad desde el primer arranque.');
INSERT INTO producto VALUES(3,'Disco SSD 1 TB', 150, 4, 'images/ssd.jpeg','3D V-NAND es la nueva arquitectura de las memorias flash unica y exclusiva de Samsung, que supera la limitacion de la densidad y la resistencia de la arquitectura NAND convencional. 3D V-NAND se fabrica ampliando 32 capas de celulas verticalmente una sobre la otra, en lugar de disminuir las dimensiones de las celulas.');
INSERT INTO producto VALUES(4,'GeForce GTX 1050Ti',185, 7, 'images/gf1.jpeg', 'Para experimentar el impresionante mundo de la Realidad Virtual, un hardware de alto rendimiento es necesario. Integrando las ultimas tecnologias y participando con los actores principales en VR, MSI ofrece sus productos VR Ready para la experiencia VR mas realista.');
INSERT INTO producto VALUES(5,'GeForce GTX 1080 Xtreme',755, 6, 'images/gf2.jpeg', 'La serie ASUS Dual GeForce GTX 1050 esta equipada con dos ventiladores que refrigeran el doble. La exclusiva tecnologaa Auto-Extreme de ASUS con componentes Super Alloy asegura la maxima fiabilidad bajo cualquier escenario de uso, y GPU Tweak II con XSplit Gamecaster permite ajustar el rendimiento y retransmitir las partidas en vivo. Disfruta de la mejor experiencia con juegos como Overwatch, Dota 2, CS Go y League of Legends.');
INSERT INTO producto VALUES(6,'Monitor 24 LED Full HD',202, 1, 'images/monitor1.jpeg', 'Una experiencia mas confortable para tu vista con el modo Eye Saver. A diferencia de otros colores emitidos por las pantallas, las longitudes de onda de luz azul tienen un efecto mas estimulante sobre la retina, lo que causa una mayor fatiga ocular. El modo Eye Saver hace mas comoda la visualizacion al reducir las emisiones de luz azul.');
INSERT INTO producto VALUES(7,'Monitor 27 LED Full HD',245, 1, 'images/monitor2.jpeg', 'Es un monitor pensado por y para los gamers. Ahora podra disfrutar de un nuevo nivel de juego en una impresionante pantalla IPS. Su increible tamano hacen de este monitor una autentica joya para cualquier gamer.');
INSERT INTO producto VALUES(8,'Portatil Yoga 520',559, 2, 'images/pc1.jpeg', 'El ordenador portatil de Lenovo Yoga 520, elegante y compacto, cuenta con un procesamiento de gran alcance, puertos de vanguardia y la conveniencia y seguridad de una conexion de huella dactilar opcional. Disfrute del mejor contenido multimedia gracias a su pantalla Full HD IPS, ya sea navegando por la web, transmitiendo una pelicula o trabajando en sus propias creaciones.');
INSERT INTO producto VALUES(9,'Portatil Ideapd 320',444, 2, 'images/pc2.jpeg', 'El ordenador portatil Lenovo Ideapad 320-15IKBN es un excelente portatil a un magnifico precio, con procesador Intel Core i3, 4GB de RAM DDR4, 128GB de disco duro SSD.Si te encanta oir musica o ver videos en linea sin cesar pero no quieres gastar dinero en funciones que no necesitas, el Ideapad 320-15IKBN es tu portatil. El procesamiento rapido y fiable, el audio mejorado y pantalla hacen que sea un PC multimedia ideal.');
INSERT INTO producto VALUES(10,'Impresora HP Deskjet 3720',59, 3, 'images/hp1.jpeg', 'La impresora "todo en uno" mas manejable del mundo. No necesitas preocuparte por si la Deskjet 3720 ocupa mucho espacio. Se ajusta perfectamente a cualquier espacio de tu hogar, permitiendote imprimir o escanear de forma facil fotos, documentos, etc. Con una impresion de colores vibrantes, la Deskjet 3720 es ideal para imprimir fotos con calidad de laboratorio fotografico desde su smartphone, tablet o PC.');
INSERT INTO producto VALUES(11,'Impresora HP Laserjet Pro M26nw',180, 3, 'images/hp2.jpeg', 'Imprima facilmente documentos de alta calidad y obtenga la fiabilidad que espera del lider en impresion laser. Imprima al instante con un cartucho previamente instalado y un panel LED intuitivo. La tecnologia HP Auto-On/Auto-Off permite ahorrar energia. Confie en la nitidez de los documentos que ofrece el lider del sector en impresion laser.');
INSERT INTO producto VALUES(12,'Huawei MateBook D Intel Core i5-7200U/8GB/256GB SSD/15.6',870, 8, 'images/pc3.jpg', 'El MateBook D de Huawei con pantalla FHD IPS de chasis de aluminio y un peso inferior a dos kilos favorecen su diseno ligero y elegante. Sus altavoces Dolby transforman el entretenimiento, los juegos y la navegacion es una experiencia inmersiva que establece un nuevo punto de referencia para los PC. Poniendote a ti en el centro de la informacion.');
INSERT INTO producto VALUES(13,'Xiaomi Mi Wireless Raton Inalambrico Negro',12, 9, 'images/raton.jpg', 'El raton inalambrico Xiaomi Mi es el companero perfecto para tu ordenador. Ofrece desplazamiento rapido y deslizamiento suave en cualquier superficie donde lo apliques. Sera especialmente util cuando viajes, ya que pesa solo 82 g y no ocupa mucho espacio en su maletin.');