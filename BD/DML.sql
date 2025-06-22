# ESTOS DATOS SON NECESARIOS PARA PROBAR LOS PPROCEDIMIENTOS
-- 1. Tabla: TipoDoc
INSERT INTO `TipoDoc` (`nombre`) VALUES
('Cédula de Ciudadanía'),
('Cédula de Extranjería'),
('Pasaporte'),
('Tarjeta de Identidad'),
('NIT'),
('Registro Civil'),
('Permiso Especial de Permanencia');

-- 2. Tabla: Localidades
-- Se insertan 5 localidades de Bogotá como ejemplo.
INSERT INTO `Localidades` (`nombre`) VALUES
('Usaquén'),
('Chapinero'),
('Teusaquillo'),
('Puente Aranda'),
('Kennedy');

-- 3. Tabla: Barrio
-- Se insertan barrios y se asocian a las localidades creadas anteriormente (IDs 1-5).
INSERT INTO `Barrio` (`nombre`, `idLocalidad`) VALUES
('Santa Bárbara', 1),   -- Usaquén
('Quinta Camacho', 2),  -- Chapinero
('Galerías', 3),        -- Teusaquillo
('Salazar Gómez', 4),   -- Puente Aranda
('Castilla', 5);         -- Kennedy

-- 4. Tabla: Especie
INSERT INTO `Especie` (`nombre`) VALUES
('Perro'),
('Gato'),
('Ave'),
('Roedor'),
('Reptil');

-- 5. Tabla: Raza
-- Se asocian a las especies creadas anteriormente (IDs 1-5).
INSERT INTO `Raza` (`nombre`, `especie`) VALUES
('Golden Retriever', 1), -- Perro
('Siamés', 2),           -- Gato
('Canario', 3),          -- Ave
('Hámster Sirio', 4),    -- Roedor
('Tortuga de Orejas Rojas', 5); -- Reptil

-- 6. Tabla: Roles
INSERT INTO `Roles` (`nombre`) VALUES
('Médico'),
('Recepcionista'),
('Admin'),
('Auxiliar Veterinario'),
('Peluquero Canino'),
('Cirujano Veterinario'),
('Especialista en Comportamiento'),
('Gerente de Tienda');

-- 7. Tabla: Examenes
INSERT INTO `Examenes` (`nombre`) VALUES
('Perfil Sanguíneo Completo'),
('Análisis de Orina (Urianálisis)'),
('Radiografía de Tórax'),
('Ecografía Abdominal'),
('Prueba de Alergias');

-- 8. Tabla: Servicios
INSERT INTO `Servicios` (`nombre`) VALUES
('Consulta General'),
('Vacunación Anual'),
('Baño y Peluquería'),
('Cirugía de Esterilización'),
('Guardería por Día');

-- 9. Tabla: Suscripcion
INSERT INTO `Suscripcion` (`idSuscripcion`, `nombre`, `descripcion`, `costoMensual`, `estado`) VALUES
(1, 'Plan Básico', 'Acceso a descuentos en consultas y productos básicos.', '30000', 'Activo'),
(2, 'Plan Bienestar', 'Incluye consultas ilimitadas y un chequeo anual.', '75000', 'Activo'),
(3, 'Plan Premium', 'Cobertura completa incluyendo exámenes y descuentos en cirugías.', '150000', 'Activo'),
(4, 'Plan Cachorros', 'Plan especial para el primer año de vida de la mascota.', '90000', 'Activo'),
(5, 'Plan Geriátrico', 'Cuidado especializado para mascotas mayores de 7 años.', '110000', 'Activo');