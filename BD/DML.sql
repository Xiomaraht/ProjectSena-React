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
("24/06/2025-10:00", '1016595990', 'Cédula de Ciudadanía', '5959901016', 'Cédula de Extranjería'),
("24/07/2025-10:00", '1016595991', 'Cédula de Extranjería', '4959901016', 'Pasaporte'),
("24/08/2025-10:00", '1016595992', 'Pasaporte', '3959901016', 'Cédula de Ciudadanía'),
("24/09/2025-10:00", '1016595993', 'Permiso Especial de Permanencia', '2959901016', 'Cédula de Extranjería'),
("24/10/2025-10:00", '1016595994', 'Cédula de Extranjería', '1959901016', 'Permiso Especial de Permanencia');

-- 11. Tabla: Consultas
INSERT INTO Consultas(fecCon, reporConsult, resultExam, empleadosNumDoc, empleadosTipDoc, idMasc) VALUES
("24/06/2025-10:00", '1016595990', 'Cédula de Ciudadanía', '5959901016', 'Cédula de Extranjería',1),
("24/07/2025-10:00", '1016595991', 'Cédula de Extranjería', '4959901016', 'Pasaporte',2),
("24/08/2025-10:00", '1016595992', 'Pasaporte', '3959901016', 'Cédula de Ciudadanía',3),
("24/09/2025-10:00", '1016595993', 'Permiso Especial de Permanencia', '2959901016', 'Cédula de Extranjería',4),
("24/10/2025-10:00", '1016595994', 'Cédula de Extranjería', '1959901016', 'Permiso Especial de Permanencia',5);
 -- report consulta y resultado examen faltan
 
 -- 12. Tabla: Inventario
INSERT INTO Inventario(productoID, cantidadActual, fechaUltimaActualizacion, veterinariaNit) VALUES
(1, 10, "24/06/2025-10:00", '595990101'),
(2, 16, "24/06/2025-10:00", '495990101'),
(3, 11, "24/06/2025-10:00", '395990101'),
(4, 17, "24/06/2025-10:00", '295990101'),
(5, 12, "24/06/2025-10:00", '195990101');

 -- 13. Tabla: Producto
INSERT INTO Producto(image, precio, stock, idInventario) VALUES
("image_1", 10000, 10, 1),
("image_2", 16000, 23, 2),
("image_3", 11000, 16, 3),
("image_4", 17000, 11, 4),
("image_5", 1200, 27, 5);

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

