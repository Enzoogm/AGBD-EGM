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


CREATE TABLE Categorias (
    id_categoria INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_cat TEXT NOT NULL
);

CREATE TABLE Proveedores (
    id_proveedor INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_prov TEXT NOT NULL,
    telefono TEXT,
    direccion TEXT
);

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Insertar algunas categorias con los provedores 

INSERT INTO Categorias (nombre_cat) VALUES 
('Bebidas'),
('Limpieza'),
('Alimentos'),
('Higiene');

INSERT INTO Proveedores (nombre_prov, telefono, direccion) VALUES 
('Coca-Cola', '123456789', 'Av. Siempre Viva 123'),
('Procter & Gamble', '987654321', 'Av. Mitre 4500'),
('Arcor', '555555555', 'Calle Dulce 567'),
('Colgate', '567891234', 'Calle DienBla');


INSERT INTO Productos (nombre_prod, precio, stock, id_categoria, id_proveedor) VALUES 
('Coca-Cola 2L', 900.00, 25, 1, 1),
('Detergente Ala', 500.00, 30, 2, 2),
('Galletitas Arcor', 350.00, 40, 3, 3),
('Colgate luminous white', 250, 30, 4, 4);
