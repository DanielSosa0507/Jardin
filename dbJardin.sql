use jardin;


-- Crear tabla de géneros
CREATE TABLE Genero (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    genero_descripcion VARCHAR(50) NOT NULL
);


-- Crear tabla de roles
CREATE TABLE Rol (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    rol_descripcion VARCHAR(50) NOT NULL
);


-- Crear tabla de estados
CREATE TABLE Estado (
    id_estado INT AUTO_INCREMENT PRIMARY KEY,
    estado_descripcion VARCHAR(50) NOT NULL
);

-- Crear tabla de empleados
CREATE TABLE Empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    id_rol INT,
    id_genero INT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    dni VARCHAR(20),
    fecha_cumpleaños DATE,
    telefono VARCHAR(20),
    domicilio VARCHAR(100),
    mail VARCHAR(100),
    FOREIGN KEY (id_rol) REFERENCES Rol(id_rol),
    FOREIGN KEY (id_genero) REFERENCES Genero(id_genero)
);

-- Crear tabla de relaciones de empleados
CREATE TABLE Empleados_Relacion (
    id_empleado INT,
    id_estado INT,
    fecha_inicio DATE,
    fecha_fin DATE,
    esta_activo BOOLEAN,
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado),
    FOREIGN KEY (id_estado) REFERENCES Estado(id_estado)
);
