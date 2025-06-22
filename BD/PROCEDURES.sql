 # This is PROCEDURES
 
 -- Procedimiento para insercion de proveedores
 
 DELIMITER $$
 CREATE PROCEDURE nuevo_proveedor(
	IN p_nit VARCHAR(20), 
    IN p_nombreEmpresa VARCHAR(100),
    IN p_nombreContacto VARCHAR(200),
    IN p_direccion VARCHAR(255),
    IN p_telefono BIGINT,
    IN p_correo VARCHAR(100)
 )
 BEGIN
	INSERT INTO proveedores(nit, nombreEmpresa, nombreContacto, direccion, telefono, correo)
    VALUES(p_nit, p_nombreEmpresa, p_nombreContacto, p_direccion, p_telefono, p_correo);
 END$$
 DELIMITER ;
 
 # Usese: CALL nuevo_proveedor(860069284-2, "AGROCAMPO S.A.S.", "William Sheakspeare", "CRA 72 # 109 A 76", 3108665432, "SHEAKSPIRITO@gmail.com");
 
 -- procedimiento para la insercion de veterinarias
 
 DELIMITER $$
 CREATE PROCEDURE nueva_veterinaria(
	IN p_nit VARCHAR(20),
    IN p_nomVet VARCHAR(100),
    IN p_direccion VARCHAR(255),
    IN p_telVet BIGINT,
    IN p_correo VARCHAR(100), 
    IN p_veterinariasBarrio INT(11)
 )
 BEGIN
	INSERT INTO veterinarias(nit, nomVet, direccion, telVet, correo, veterinariasBarrio)
    VALUES(p_nit, p_nomVet, p_direccion, p_telVet, p_correo, p_veterinariasBarrio);
 END$$
 DELIMITER ;
 
  -- Usese:CALL nueva_veterinaria('900.123.456-7', 'Clínica Veterinaria Pecitas Felices', 'Carrera 15 # 82-20, Bogotá', 3101234567, 'contacto@pecitasfelices.com', 1 -- ID del barrio ej: 1 para 'Usaquén');
  
  -- DATOS DE INSERCION PARA VETERINARIAS USANDO EL PROCEDIMIENTO 
  
  CALL nueva_veterinaria(
    '900.123.456-7', 
    'Clínica Veterinaria Pecitas Felices', 
    'Carrera 15 # 82-20', 
    3101234567, 
    'contacto@pecitasfelices.com', 
    1 -- ID del barrio, ej: 1 para 'Usaquén'
);

CALL nueva_veterinaria(
    '901.234.567-8', 
    'Centro Médico Animalia', 
    'Calle 10A # 40-15', 
    3219876543, 
    'citas@animaliamedellin.co', 
    2 -- ID del barrio, ej: 2 para 'El Poblado'
);


CALL nueva_veterinaria(
    '805.345.678-9', 
    'VetSalud del Sur', 
    'Avenida 6N # 25-50', 
    3158765432, 
    'info@vetsaludsur.com', 
    3 -- ID del barrio, ej: 3 para 'Granada'
);


CALL nueva_veterinaria(
    '900.456.789-0', 
    'Hospital Veterinario Costa Caribe', 
    'Carrera 58 # 72-10', 
    3001122334, 
    'urgencias@costacaribevet.com.co', 
    4 -- ID del barrio, ej: 4 para 'El Prado'
);


CALL nueva_veterinaria(
    '800.567.890-1', 
    'Mascotas Sanas', 
    'Carrera 33 # 50-05', 
    3187654321, 
    'atencion@mascotassanasbga.net', 
    5 -- ID del barrio, ej: 5 para 'Cabecera del Llano'
);

  -- DATOS DE INSERCION PARA PROOVEDORES USANDO EL PROCEDIMIENTO 

-- Ejemplo 1: Proveedor de productos farmacéuticos
CALL nuevo_proveedor(
    '860.069.284-2', 
    'DistriVet Colombia',
    'Carlos Rodriguez',
    'Avenida El Dorado # 100-20, Bogotá', 
    3123456789,
    'ventas.corporativas@distrivet.com.co'
);

-- Ejemplo 2: Proveedor de equipos médicos y quirúrgicos
CALL nuevo_proveedor(
    '900.555.123-4',
    'Equipos Vet-Tech',
    'Ana Maria Gutierrez',
    'Parque Industrial Celta, Bodega 5, Funza, Cundinamarca',
    3156789012,
    'ana.gutierrez@vet-tech.com'
);

-- Ejemplo 3: Proveedor de alimentos y nutrición animal
CALL nuevo_proveedor(
    '830.111.987-6',
    'NutriCan S.A.S.',
    'Sofia Castro',
    'Carrera 43A # 1-50, Oficina 801, Medellín',
    3109876543,
    'sofia.castro@nutrican.co'
);

-- Ejemplo 4: Laboratorio de diagnóstico
CALL nuevo_proveedor(
    '901.888.345-2',
    'BioAnimal Labs',
    'Javier Moreno',
    'Zona Franca del Pacífico, Lote 12, Palmira, Valle del Cauca',
    3201234567,
    'javier.moreno@bioanimallabs.com'
);

-- Ejemplo 5: Proveedor de accesorios y juguetes
CALL nuevo_proveedor(
    '900.777.654-3',
    'Todo para Mascotas Ltda.',
    'Laura Jimenez',
    'Calle 98 # 15-20, Local 3, Bogotá',
    3198765432,
    'laura.j@todoparamascotas.com'
);

select * FROM proveedores;


