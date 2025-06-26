-- Tabla de Productos
CREATE TABLE Productos (
    id_producto INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_prod TEXT NOT NULL,
    precio REAL NOT NULL,
    stock INTEGER NOT NULL,
    id_categoria INTEGER NOT NULL,
    id_proveedor INTEGER NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria),
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);

-- Tabla de Categorias
CREATE TABLE Categorias (
    id_categoria INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_cat TEXT NOT NULL
);

-- Tabla de Proveedores
CREATE TABLE Proveedores (
    id_proveedor INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_prov TEXT NOT NULL,
    telefono TEXT,
    direccion TEXT
);

-- Insertar Categorías
INSERT INTO Categorias (nombre_cat) VALUES 
('Bebidas'),
('Limpieza'),
('Alimentos'),
('Higiene'),
('Panadería'),
('Fiambres'),
('Lácteos');

-- Insertar Proveedores
INSERT INTO Proveedores (nombre_prov, telefono, direccion) VALUES 
('Coca-Cola', '123456789', 'Av. Siempre Viva 123'),
('Procter & Gamble', '987654321', 'Av. Mitre 4500'),
('Arcor', '555555555', 'Calle Dulce 567'),
('Colgate', '567891234', 'Calle DienBla'),
('La Serenísima', '445566778', 'Ruta 8 Km 45'),
('Paladini', '778899665', 'Parque Industrial 223'),
('Bimbo', '112233445', 'Av. Panificados 890');

-- Insertar Productos
INSERT INTO Productos (nombre_prod, precio, stock, id_categoria, id_proveedor) VALUES 
('Coca-Cola 2L', 900.00, 25, 1, 1),
('Pepsi 2L', 850.00, 20, 1, 1),
('Detergente Ala', 500.00, 30, 2, 2),
('Desodorante Rexona', 700.00, 15, 4, 2),
('Galletitas Arcor', 350.00, 40, 3, 3),
('Colgate luminous white', 250.00, 30, 4, 4),
('Leche entera 1L', 500.00, 50, 7, 5),
('Queso cremoso x kg', 3000.00, 10, 6, 6),
('Jamón cocido x kg', 3500.00, 12, 6, 6),
('Pan francés', 250.00, 100, 5, 7),
('Medialuna', 200.00, 80, 5, 7),
('Yogur bebible', 450.00, 40, 7, 5);





--05/06 Agrego mas productos para tener mas variedad y dar ejemplos de uso en el oral

INSERT INTO Productos (nombre_prod, precio, stock, id_categoria, id_proveedor) VALUES 
-- Bebidas
('Sprite 2L', 880.00, 20, 1, 1),
('Fanta 2L', 870.00, 18, 1, 1),
('Agua mineral 1.5L', 600.00, 35, 1, 1),

-- Limpieza
('Lavandina Ayudín 1L', 450.00, 25, 2, 2),
('Jabón en polvo Zorro 800g', 950.00, 22, 2, 2),
('Esponja doble acción', 300.00, 50, 2, 2),

-- Alimentos
('Arroz Gallo Oro 1Kg', 1200.00, 40, 3, 3),
('Fideos Lucchetti 500g', 700.00, 60, 3, 3),
('Azúcar Ledesma 1Kg', 850.00, 35, 3, 3),

-- Higiene
('Shampoo Head & Shoulders 400ml', 1200.00, 20, 4, 4),
('Cepillo dental Oral-B', 550.00, 30, 4, 4),
('Jabón Dove 90g', 350.00, 40, 4, 4),

-- Panadería
('Pan lactal Bimbo', 780.00, 25, 5, 7),
('Facturas surtidas (6u)', 1200.00, 15, 5, 7),

-- Fiambres
('Salame picado grueso x kg', 4000.00, 8, 6, 6),
('Queso pategrás x kg', 4200.00, 7, 6, 6),

-- Lácteos
('Leche descremada 1L', 500.00, 40, 7, 5),
('Manteca La Serenísima 200g', 900.00, 20, 7, 5),
('Queso crema 300g', 950.00, 25, 7, 5);


-- Mas productos por separado porque me olvide de agregar mas

INSERT INTO Productos (nombre_prod, precio, stock, id_categoria, id_proveedor) VALUES 
-- Bebidas
('Cepita Naranja 1L', 720.00, 30, 1, 1),
('Speed 473ml', 1100.00, 20, 1, 1),
('Cerveza Quilmes 1L', 950.00, 15, 1, 1),

-- Limpieza
('Limpiador Cif 500ml', 680.00, 25, 2, 2),
('Desinfectante Lysoform Aerosol', 1350.00, 18, 2, 2),
('Trapo de piso amarillo', 450.00, 30, 2, 2),

-- Alimentos
('Harina Pureza 1Kg', 700.00, 50, 3, 3),
('Aceite Natura 900ml', 1300.00, 40, 3, 3),
('Salsa de tomate Arcor 520g', 600.00, 35, 3, 3),

-- Higiene
('Papel Higiénico Elite 4 rollos', 950.00, 25, 4, 4),
('Desodorante Nivea 150ml', 1050.00, 20, 4, 4),
('Crema dental Sensodyne 90g', 980.00, 30, 4, 4),

-- Panadería
('Chipa x 6 unidades', 1400.00, 12, 5, 7),
('Tarta de jamón y queso', 2400.00, 8, 5, 7),

-- Fiambres
('Mortadela Paladini x kg', 2800.00, 10, 6, 6),
('Queso Tybo x kg', 3200.00, 9, 6, 6),

-- Lácteos
('Postrecito Serenito', 350.00, 45, 7, 5),
('Crema de leche La Serenísima 200ml', 950.00, 22, 7, 5),
('Yogur Griego Natural 120g', 700.00, 30, 7, 5);


-- Empezar a prepar para el oral del 19/06

--verificar si estan todos los productos 
SELECT 
    Productos.id_producto,
    Productos.nombre_prod,
    Productos.precio,
    Productos.stock,
    Categorias.nombre_cat,
    Proveedores.nombre_prov
FROM 
    Productos
INNER JOIN 
    Categorias ON Productos.id_categoria = Categorias.id_categoria
INNER JOIN 
    Proveedores ON Productos.id_proveedor = Proveedores.id_proveedor
WHERE 
    Productos.id_categoria = 1;









INSERT INTO Productos (nombre_prod, precio, stock, 
id_categoria, id_proveedor)
VALUES ('Pepsi Zero 1.5L', 950.00, 20, 1, 1);


---------------------Nueva sentencia para pagos, etc---------------------------


-- Tabla Ventas
CREATE TABLE Ventas (
    id_venta INTEGER PRIMARY KEY AUTOINCREMENT,
    fecha DATE NOT NULL,
    total REAL NOT NULL
);

-- Tabla DetalleVentas
CREATE TABLE DetalleVentas (
    id_detalle INTEGER PRIMARY KEY AUTOINCREMENT,
    id_venta INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    precio_unitario REAL NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

-- Tabla Pagos
CREATE TABLE Pagos (
    id_pago INTEGER PRIMARY KEY AUTOINCREMENT,
    id_venta INTEGER NOT NULL,
    metodo_pago TEXT NOT NULL,
    monto REAL NOT NULL,
    fecha_pago DATE NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
);
