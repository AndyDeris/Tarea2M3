
-- Seleccionar la base de datos creada
USE tarea2m3;
-- Crear la tabla OPERADORES
CREATE TABLE OPERADORES (
    RUN VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    direccion VARCHAR(100),
    correo_electronico VARCHAR(100),
    fecha_creacion DATE
);


-- Agregar 10 registros a la tabla OPERADORES
INSERT INTO OPERADORES (RUN, nombre, apellido, direccion, correo_electronico, fecha_creacion)
VALUES 
    ('123456789', 'Juan', 'Pérez', 'Av. Libertador 123', 'juan.perez@mail.com', '2022-01-01'),
    ('234567890', 'Ana', 'González', 'Calle San Martín 456', 'ana.gonzalez@mail.com', '2022-01-02'),
    ('345678901', 'Pedro', 'Sánchez', 'Av. 9 de Julio 789', 'pedro.sanchez@mail.com', '2022-01-03'),
    ('456789012', 'María', 'Rodríguez', 'Calle Corrientes 1234', 'maria.rodriguez@mail.com', '2022-01-04'),
    ('567890123', 'Carlos', 'Gómez', 'Av. Santa Fe 5678', 'carlos.gomez@mail.com', '2022-01-05'),
    ('678901234', 'Lucía', 'Fernández', 'Calle Florida 901', 'lucia.fernandez@mail.com', '2022-01-06'),
    ('789012345', 'Mario', 'Díaz', 'Av. Corrientes 2345', 'mario.diaz@mail.com', '2022-01-07'),
    ('890123456', 'Laura', 'Alvarez', 'Calle Lavalle 567', 'laura.alvarez@mail.com', '2022-01-08'),
    ('901234567', 'Sergio', 'López', 'Av. Rivadavia 8901', 'sergio.lopez@mail.com', '2022-01-09'),
    ('012345678', 'Gabriela', 'Martínez', 'Calle Sarmiento 234', 'gabriela.martinez@mail.com', '2022-01-10');
    
    -- Crear la tabla USUARIOS
CREATE TABLE USUARIOS (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    correo_electronico VARCHAR(100),
    telefono VARCHAR(20),
    fecha_creacion DATE
);

-- Agregar 10 registros a la tabla USUARIOS
INSERT INTO USUARIOS (nombre, apellido, correo_electronico, telefono, fecha_creacion)
VALUES 
    ('Manuel', 'Fernández', 'manuel.fernandez@mail.com', '123444789', '2022-01-01'),
    ('Julia', 'García','julia.garcia@gmail.com','123456668','2022-01-02'),
    ('Gonzalo', 'Morales', 'gonzalo.morales@gmail.com','123336789','2022-01-03'),
    ('Manuel ','Maturana', 'manuel.maturasna@gmail.com','123459999','2022-01-04'),
    ('Gabriel', 'Ulloa', 'gabriel.ulloa@gmail.com','123476998','2022-01-05'),
    ('Carolina', 'Monzalve', 'carolina.monsalve@gmail.com','436576789','2022-01-06'),
    ('Hugo', 'León', 'hugo.leon@gmail.com','944556679','2022-01-07'),
    ('Sandra', 'Baeza', 'sandra.baeza@gmail.com','98756789','2022-01-08'),
    ('Alexis', 'Sanchez', 'alexis.sanchez@gmail.com','99976670','2022-01-09'),
	('akira','torillama', 'akira.torillama@gmail.com','90876689','2022-01-10');
    
    -- crear tabla capacitaciones con 10 capacitaciones 
    
    CREATE TABLE capacitaciones (
  codigo_curso INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  horario VARCHAR(50) NOT NULL,
  costo DECIMAL(8,2) NOT NULL,
  fecha_realizacion DATE NOT NULL
);

INSERT INTO capacitaciones (codigo_curso, nombre, horario, costo, fecha_realizacion) VALUES 
(1, 'Introducción a MySQL', 'Lunes 10:00 - 12:00', 50.00, '2023-05-01'),
(2, 'Programación en Python', 'Miércoles 14:00 - 16:00', 75.00, '2023-05-10'),
(3, 'Marketing Digital', 'Martes 18:00 - 20:00', 100.00, '2023-05-20'),
(4, 'Diseño de Interiores', 'Sábado 9:00 - 12:00', 150.00, '2023-06-01'),
(5, 'Desarrollo Web con React', 'Jueves 16:00 - 18:00', 80.00, '2023-06-10'),
(6, 'Fotografía Profesional', 'Viernes 14:00 - 17:00', 120.00, '2023-06-20'),
(7, 'Análisis de Datos con Excel', 'Lunes 18:00 - 20:00', 60.00, '2023-07-01'),
(8, 'Inglés Avanzado', 'Martes 10:00 - 12:00', 90.00, '2023-07-10'),
(9, 'Diseño Gráfico', 'Miércoles 18:00 - 20:00', 110.00, '2023-07-20'),
(10, 'Administración de Proyectos', 'Sábado 10:00 - 12:00', 130.00, '2023-08-01');

-- Debe indicar cuánto fue el costo de realización de todos los cursos de capacitación registrados

SELECT SUM(costo) as costo_total FROM capacitaciones;

-- Muestre los 5 operadores más recientemente registrados.

 SELECT * FROM OPERADORES ORDER BY fecha_creacion DESC LIMIT 5;
 
 
-- Muestre los 5 usuarios más recientemente registrados.


SELECT * FROM usuarios ORDER BY fecha_creacion DESC LIMIT 5;


-- Calcule cuántos días han transcurrido desde que se registró a operadores y clientes. Indague en la función DATEDIFF() de MySQL.


SELECT DATEDIFF(CURDATE(), fecha_creacion) AS dias_transcurridos
FROM operadores
ORDER BY fecha_creacion DESC
LIMIT 5;


-- Por último, indique cuál fue el curso de capacitación más costoso y el menos costoso.


SELECT MAX(costo) AS costo, MIN(costo) AS costo
FROM capacitaciones;





    
 

    