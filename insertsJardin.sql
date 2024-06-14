INSERT INTO Generos (genero_descripcion) VALUES ('Masculino'), ('Femenino'), ('No binario'), ('Prefiero no decirlo'), ('Otro');


INSERT INTO Roles (rol_descripcion) VALUES ('Director'), ('Maestro'), ('Administrativo'), ('Maestranza'), ('Suplente');



INSERT INTO Estados (estado_descripcion) VALUES ('Vacaciones'), ('Regular'), ('Desvinculado'), ('Contratado'), ('Tercerizado'), ('Maternidad'), ('Enfermedad');


-- Insertar empleados en la tabla de empleados
INSERT INTO Empleados (id_rol, id_genero, nombre, apellido, dni, fecha_nacimiento, telefono, domicilio, mail) 
VALUES 
(1, 1, 'Juan', 'Pérez', '12345678', '1990-05-15', '123456789', 'Calle Principal 123', 'juan@example.com'),
(2, 2, 'María', 'Gómez', '87654321', '1988-08-25', '987654321', 'Avenida Central 456', 'maria@example.com'),
(3, 1, 'Pedro', 'Martínez', '13579246', '1995-02-10', '456123789', 'Plaza Mayor 789', 'pedro@example.com'),
(4, 2, 'Ana', 'López', '65432198', '1992-11-30', '987654321', 'Calle Secundaria 321', 'ana@example.com'),
(5, 1, 'Laura', 'Rodríguez', '98765432', '1987-07-20', '123456789', 'Avenida Principal 789', 'laura@example.com');


-- Insertar relaciones de empleados en la tabla de relaciones de empleados
INSERT INTO Relaciones_Laborales (id_relacion, id_empleado, id_estado, fecha_inicio, fecha_fin, esta_activo) 
VALUES 
(1, 1, 1, '2024-01-01', NULL, TRUE),
(2, 2, 1, '2024-02-15', NULL, TRUE),
(3, 3, 2, '2024-03-20', NULL, TRUE),
(4, 4, 3, '2024-04-10', NULL, TRUE),
(5, 5, 1, '2024-05-05', NULL, TRUE);