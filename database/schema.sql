
--- Tables ---
CREATE TABLE cliente(
	id_cliente INTEGER,
	nombre VARCHAR(45),
	apellido VARCHAR(45),
	observadores VARCHAR(45),
	PRIMARY KEY (id_cliente)
);

CREATE TABLE mesero(
	id_mesero INTEGER,
	nombre VARCHAR(45),
	apellido1 VARCHAR(45),
	apellido2 VARCHAR(45),
	PRIMARY KEY(id_mesero)
);

CREATE TABLE platillo(
	id_platillo INTEGER,
	nombre VARCHAR(45),
	importe INTEGER,
	PRIMARY KEY (id_platillo)
);

CREATE TABLE bebida(
	id_bebida INTEGER,
	nombre VARCHAR(45),
	importe INTEGER,
	PRIMARY KEY (id_bebida)
);

CREATE TABLE mesa(
	id_mesa INTEGER,
	numComensales INTEGER,
	ubicacion VARCHAR(45),
	PRIMARY KEY (id_mesa)
);

CREATE TABLE factura(
	id_factura INTEGER,
	fechaFactura DATE,
	id_cliente INTEGER,
	id_mesero INTEGER,
	id_mesa INTEGER,
	id_platillo INTEGER,
	id_bebida INTEGER,
	PRIMARY KEY (id_factura),
	FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON DELETE SET DEFAULT ON UPDATE NO ACTION,
	FOREIGN KEY (id_mesero) REFERENCES mesero(id_mesero) ON DELETE RESTRICT ON UPDATE NO ACTION,
	FOREIGN KEY (id_mesa) REFERENCES mesa(id_mesa) ON DELETE RESTRICT ON UPDATE NO ACTION,
	FOREIGN KEY (id_platillo) REFERENCES platillo(id_platillo) ON DELETE SET NULL ON UPDATE NO ACTION,
	FOREIGN KEY (id_bebida) REFERENCES bebida(id_bebida) ON DELETE CASCADE ON UPDATE CASCADE
);

--- Inserts ---cd

INSERT INTO bebida VALUES 
(1, 'limonada', 100), 
(2, 'coco', 200),
(3, 'guanabana', 300),
(4, 'mango', 400),
(5, 'fresa', 500),
(6, 'uva', 600),
(7, 'lulo', 700),
(8, 'maracuya', 800),
(9, 'tomate', 900),
(10, 'guayaba', 1000);

INSERT INTO cliente VALUES 
(1, 'Jhonier', 'mendez', 'bueno'), 
(2, 'David', 'Guerrero', 'malo'),
(3, 'Cristian', 'Guaza', 'bueno'),
(4, 'Jose', 'bravo', 'bueno'),
(5, 'Edwin', 'mendez', 'bueno'),
(6, 'Julian', 'gomez', 'malo'),
(7, 'Cristina', 'macca', 'bueno'),
(8, 'Flor', 'meneses', 'regular'),
(9, 'Lucero', 'flores', 'regular'),
(10, 'Angela', 'wisner', 'malo');

INSERT INTO mesero VALUES 
(1, 'Juan', 'murillo', 'gomez'),
(2, 'Enrique', 'bravo', 'macca'),
(3, 'Marta', 'gonzales', 'basalmo'),
(4, 'Juliana', 'pejendino', 'menendez'),
(5, 'Jimena', 'aristizabal', 'perez'),
(6, 'Laura', 'bueno', 'meneses'),
(7, 'Estefania', 'flores', 'berdugo'),
(8, 'Girasol', 'lopez', 'arboleda'),
(9, 'Rosa', 'tello', 'ceron'),
(10, 'Angelica', 'vidal', 'correa');

INSERT INTO platillo VALUES 
(1, 'Tacos al Pastor', 50),
(2, 'Enchiladas Verdes', 70),
(3, 'Sopa de Tortilla', 45),
(4, 'Quesadillas', 40),
(5, 'Chilaquiles Rojos', 60),
(6, 'Tamales', 35),
(7, 'Pozole', 80),
(8, 'Tostadas de Tinga', 55),
(9, 'Flautas de Pollo', 50),
(10, 'Mole Poblano', 90);

INSERT INTO mesa VALUES
(1, 4, 'Terraza'),
(2, 2, 'Jardín'),
(3, 6, 'Salón Principal'),
(4, 8, 'Salón Privado'),
(5, 4, 'Salón Principal'),
(6, 2, 'Terraza'),
(7, 10, 'Salón de Eventos'),
(8, 6, 'Jardín'),
(9, 4, 'Balcón'),
(10, 2, 'Entrada');

INSERT INTO factura VALUES
(1, '2024-10-01', 1, 1, 1, 1, 1),
(2, '2024-10-02', 2, 2, 2, 2, 2),
(3, '2024-10-03', 3, 3, 3, 3, 3),
(4, '2024-10-04', 4, 4, 4, 4, 4),
(5, '2024-10-05', 5, 5, 5, 5, 5),
(6, '2024-10-06', 6, 6, 6, 6, 6),
(7, '2024-10-07', 7, 7, 7, 7, 7),
(8, '2024-10-08', 8, 8, 8, 8, 8),
(9, '2024-10-09', 9, 9, 9, 9, 9),
(10, '2024-10-10', 10, 10, 10, 10, 10);
