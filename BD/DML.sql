# ESTOS DATOS SON NECESARIOS PARA PROBAR LOS PPROCEDIMIENTOS
-- 1. Tabla: TipoDoc
INSERT INTO TipoDoc(nombre) VALUES
('Cédula de Ciudadanía'),
('Cédula de Extranjería'),
('Pasaporte'),
('Tarjeta de Identidad'),
('NIT'),
('Registro Civil'),
('Permiso Especial de Permanencia');

-- 2. Tabla: Localidades
-- Se insertan 5 localidades de Bogotá como ejemplo.
INSERT INTO Localidades (nombre) VALUES
('Usaquén'),
('Chapinero'),
('Teusaquillo'),
('Puente Aranda'),
('Kennedy');

-- 3. Tabla: Barrio
-- Se insertan barrios y se asocian a las localidades creadas anteriormente (IDs 1-5).
INSERT INTO Barrio(nombre, idLocalidad) VALUES
('Santa Bárbara', 1),   -- Usaquén
('Quinta Camacho', 2),  -- Chapinero
('Galerías', 3),        -- Teusaquillo
('Salazar Gómez', 4),   -- Puente Aranda
('Castilla', 5);         -- Kennedy

-- 4. Tabla: Especie
INSERT INTO Especie (nombre) VALUES
('Perro'),
('Gato'),
('Ave'),
('Roedor'),
('Reptil');

-- 5. Tabla: Raza
-- Se asocian a las especies creadas anteriormente (IDs 1-5).
INSERT INTO Raza(nombre, especie) VALUES
('Golden Retriever', 1), -- Perro
('Siamés', 2),           -- Gato
('Canario', 3),          -- Ave
('Hámster Sirio', 4),    -- Roedor
('Tortuga de Orejas Rojas', 5); -- Reptil

-- 6. Tabla: Roles
INSERT INTO Roles(nombre) VALUES
('Médico'),
('Recepcionista'),
('Admin'),
('Auxiliar Veterinario'),
('Peluquero Canino'),
('Cirujano Veterinario'),
('Especialista en Comportamiento'),
('Gerente de Tienda');

-- 7. Tabla: Examenes
INSERT INTO Examenes(nombre) VALUES
('Perfil Sanguíneo Completo'),
('Análisis de Orina (Urianálisis)'),
('Radiografía de Tórax'),
('Ecografía Abdominal'),
('Prueba de Alergias');

-- 8. Tabla: Servicios
INSERT INTO Servicios(nombre) VALUES
('Consulta General'),
('Vacunación Anual'),
('Baño y Peluquería'),
('Cirugía de Esterilización'),
('Guardería por Día');

-- 9. Tabla: Suscripcion
INSERT INTO Suscripcion(idSuscripcion, nombre, descripcion, costoMensual, estado) VALUES
(1, 'Plan Básico', 'Acceso a descuentos en consultas y productos básicos.', '30000', 'Activo'),
(2, 'Plan Bienestar', 'Incluye consultas ilimitadas y un chequeo anual.', '75000', 'Activo'),
(3, 'Plan Premium', 'Cobertura completa incluyendo exámenes y descuentos en cirugías.', '150000', 'Activo'),
(4, 'Plan Cachorros', 'Plan especial para el primer año de vida de la mascota.', '90000', 'Activo'),
(5, 'Plan Geriátrico', 'Cuidado especializado para mascotas mayores de 7 años.', '110000', 'Activo');

-- 10. Tabla: Citas
INSERT INTO Citas(fechaYhora, clientesNumDo, clientesTipDoc, empleadosNumDo, empleadosTipDoc) VALUES
("24/06/2025 10:00:10", 123456789, 1, 10101010, 1),
("24/07/2025-10:00:00", 987654321, 2, 10101010, 1),
("24/08/2025-10:00:00", 456789123, 1, 10101010, 1),
("24/09/2025-10:00:00", 789123456, 1, 10101010, 1),
("24/10/2025-10:00:00", 321654987, 2, 10101010, 1);

-- 11. Tabla: Consultas ( resultExam se quito por indefinidamente)
INSERT INTO Consultas(fecCon, reporConsult, empleadosNumDoc, empleadosTipDoc, idMasc) VALUES 
("24/06/2025-10:00", 'lorem ipsum', 10101010, 1, 1),
("24/07/2025-10:00", 'lorem ipsum', 10101010, 1, 2),
("24/08/2025-10:00", 'lorem ipsum', 10101010, 1, 3),
("24/09/2025-10:00", 'lorem ipsum', 10101010, 1, 4),
("24/10/2025-10:00", 'lorem ipsum', 10101010, 1, 5);

 -- 12. Tabla: Producto
INSERT INTO Producto (image, precio, stock, idInventario) VALUES
('FFD8FFE000104A46494600010100000100010000FFDB0043000503040404030504040405050506070C08070707070F0B0B090C110F1212110F111110121412131313121111131518171513161313141414161C1A1616181B1D1D1D12131517171714151B1C1A1C1C1C', 85000, 10, 1), -- Alimento Premium para Perros Adultos.jpg
('FFD8FFE000104A46494600010100000100010000FFDB0043000503040404030504040405050506070C08070707070F0B0B090C110F1212110F111110121412131313121111131518171513161313141414161C1A1616181B1D1D1D12131517171714151B1C1A1C1C1C', 32000, 23, 2), -- Juguete Interactivo para Gatos.jpg
('FFD8FFE000104A46494600010100000100010000FFDB0043000503040404030504040405050506070C08070707070F0B0B090C110F1212110F111110121412131313121111131518171513161313141414161C1A1616181B1D1D1D12131517171714151B1C1A1C1C1C', 45000, 16, 3), -- Champú Hipoalergénico para Mascotas Sensibles.jpg
('FFD8FFE000104A46494600010100000100010000FFDB0043000503040404030504040405050506070C08070707070F0B0B090C110F1212110F111110121412131313121111131518171513161313141414161C1A1616181B1D1D1D12131517171714151B1C1A1C1C1C', 68000, 11, 4), -- Collar Antipulgas y Garrapatas.jpg
('FFD8FFE000104A46494600010100000100010000FFDB0043000503040404030504040405050506070C08070707070F0B0B090C110F1212110F111110121412131313121111131518171513161313141414161C1A1616181B1D1D1D12131517171714151B1C1A1C1C1C', 20000, 27, 5); -- Snacks Dentales para Perros Pequeños.jpg

 -- 13. Tabla: Inventario
INSERT INTO Inventario(productoID, cantidadActual, fechaUltimaActualizacion, veterinariaNit) VALUES
(1, 10, "24/06/2025-10:00", '900.123.456-7'),
(2, 16, "24/06/2025-10:00", '901.234.567-8'),
(3, 11, "24/06/2025-10:00", '805.345.678-9'),
(4, 17, "24/06/2025-10:00", '900.456.789-0'),
(5, 12, "24/06/2025-10:00", '800.567.890-1');

 -- 14. Tabla: suscripciónesVeterinarias
INSERT INTO suscripciónesVeterinarias(veterinariaNit, idSuscripcion, fechaInicio, fechaFin, estadoSuscripcion, fechaUltimoPago, proximoPago) VALUES
("595990101", 1, "24/06/2025", "24/07/2025","Activo","24/05/2025","24/01/2025"),
("495990101", 2, "24/06/2025", "24/07/2025","Cancelada","24/05/2025","24/01/2025"),
("395990101", 3, "24/06/2025", "24/07/2025","Activo","24/05/2025","24/01/2025"),
("295990101", 4, "24/06/2025", "24/07/2025","Activo","24/05/2025","24/01/2025"),
("195990101", 5, "24/06/2025", "24/07/2025","Cancelada","24/05/2025","24/01/2025");

 -- 15. Tabla: PagosSuscripcion
INSERT INTO PagosSuscripcion(idSuscripcionVeterinaria, montoPagado, fechaPagado, peridoFacturadoInicio, periodoFacturadoFin, metodoPago, estadoPago, referenciaTransaccion) VALUES
(1, 15000, "24/06/2025", "24/07/2025", "24/08/2025","Efectivo","recibido","Efectivo"),
(2, 20000, "24/06/2025", "24/07/2025", "24/08/2025","Tarjeta débito o crédito","cancelado","M1708252"),
(3, 22000, "24/06/2025", "24/07/2025", "24/08/2025","Transferencias bancarias","cancelado","824139512"),
(4, 17500, "24/06/2025", "24/07/2025", "24/08/2025","Efectivo","recibido","Efectivo"),
(5, 24000, "24/06/2025", "24/07/2025", "24/08/2025","Efectivo","recibido","Efectivo");

 -- 15. Tabla: Facturas
INSERT INTO Facturas(fechaFactura, fechaVencimiento, subtotal, impuestos, totalFactura) VALUES
("24/06/2025", "24/10/2025", 15000, 2850, 17850),
("24/06/2025", "24/10/2025", 20000, 3800, 23800),
("24/06/2025", "24/10/2025", 22500, 4275, 26775),
("24/06/2025", "24/10/2025", 11250, 2137, 13387),
("24/06/2025", "24/10/2025", 5500, 1045, 6545);


-- Tablas intermedias

-- 16. Tabla Clientes_veterinaria
INSERT INTO ClientesVeterinaria (clientesNumDo, clientesTipDoc, VeterinariaNit) VALUES
('1032456789', 1, '900123456-7'),
('1029384756', 1, '900123456-7'),
('1098765432', 1, '900567800-1'),
('1011121314', 1, '900567800-1'),
('1056789123', 1, '901112653-3');

-- 17. Tabla Consultas_examenes
INSERT INTO ConsultasExamenes (consultasIdConsulta, examenesIdExam) VALUES
(1, 101),
(2, 104),
(3, 102),
(4, 105),
(5, 103);
-- 18. Servicios_veterinarias
INSERT INTO ServiciosVeterinarias (serviciosIdServicios, veterinariaNit) VALUES
(1, '900123456-7'),
(2, '900123456-7'),
(3, '900567800-1'),
(4, '900567800-1'),
(5, '901112653-3');

-- 19. Productos_inventarios
INSERT INTO ProductosInventario (productoId, inventarioId) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- 20. Proveedores_productos
INSERT INTO ProveedoresProductos (productosIdProducto, proveedoresNit) VALUES
(1, '9011223844'),
(2, '9011223844'),
(3, '9011334455'),
(4, '9011445576'),
(5, '9011556477');

-- 21. Productos_veterinaria
INSERT INTO ProductosVeterinarias (productosIdProducto, veterinariaNit) VALUES
(1, '900123456-7'),
(2, '900123456-7'),
(3, '900567890-1'),
(4, '900567890-1'),
(5, '901112223-3');