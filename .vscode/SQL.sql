-- Crear tablas
CREATE TABLE productos (
    id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    precio NUMERIC(10,2),
    costo NUMERIC(10,2),
    categoria VARCHAR(50),
    stock INT
);

CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    dni VARCHAR(15)
);

CREATE TABLE ventas (
    id_venta SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id_cliente),
    id_producto INT REFERENCES productos(id_producto),
    fecha DATE,
    metodo_pago VARCHAR(30),
    cantidad INT
);

-- Insertar productos
INSERT INTO productos (nombre, precio, costo, categoria, stock)
VALUES ('Mesa de comedor', 65000, 38000, 'Muebles', 15);

INSERT INTO productos (nombre, precio, costo, categoria, stock)
VALUES ('Silla de oficina', 45000, 22000, 'Muebles', 30);

INSERT INTO productos (nombre, precio, costo, categoria, stock)
VALUES ('Lampara LED', 8500, 4000, 'Iluminacion', 50);

INSERT INTO productos (nombre, precio, costo, categoria, stock)
VALUES ('Escritorio', 78000, 45000, 'Muebles', 20);

-- Insertar clientes
INSERT INTO clientes (nombre, apellido, email, dni)
VALUES ('Lucas', 'Martínez', 'lucas.martinez@gmail.com', '32456789');

INSERT INTO clientes (nombre, apellido, email, dni)
VALUES ('Valentina', 'López', 'valen.lopez@gmail.com', '38912345');

INSERT INTO clientes (nombre, apellido, email, dni)
VALUES ('Matías', 'Fernández', 'mati.fernandez@gmail.com', '41234567');

-- Insertar ventas
INSERT INTO ventas (id_cliente, id_producto, fecha, metodo_pago, cantidad)
VALUES (1, 3, '2024-01-15', 'transferencia', 1);

INSERT INTO ventas (id_cliente, id_producto, fecha, metodo_pago, cantidad)
VALUES (2, 1, '2024-01-16', 'tarjeta credito', 2);

INSERT INTO ventas (id_cliente, id_producto, fecha, metodo_pago, cantidad)
VALUES (3, 2, '2024-01-17', 'efectivo', 1);

INSERT INTO ventas (id_cliente, id_producto, fecha, metodo_pago, cantidad)
VALUES (1, 4, '2024-01-18', 'tarjeta debito', 1);