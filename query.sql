CREATE TABLE Empleados (
    Cedula VARCHAR(20) NOT NULL PRIMARY KEY,
    Password VARCHAR(255) NOT NULL
);

INSERT INTO Empleados (Cedula, Password)
VALUES ('test', 'test');

CREATE TABLE Viajeros (
    Cedula_Viajero VARCHAR(20) NOT NULL PRIMARY KEY CHECK (TRIM(Cedula_Viajero) <> ''),
    Nombre_Viajero VARCHAR(100) NOT NULL CHECK (TRIM(Nombre_Viajero) <> ''),
    Apellido_Viajero VARCHAR(100) NOT NULL CHECK (TRIM(Apellido_Viajero) <> ''),
    Pais VARCHAR(50) NOT NULL CHECK (TRIM(Pais) <> ''),
    Fecha_Nacimiento DATE NOT NULL,
    Cedula_Empleado VARCHAR(20) NOT NULL,
    FOREIGN KEY (Cedula_Empleado) REFERENCES Empleados(Cedula)
);

CREATE TABLE Paisess (
    Nombre_Pais VARCHAR(100) NOT NULL PRIMARY KEY
);

INSERT INTO Paisess (Nombre_Pais)
VALUES 
('Argentina'),
('Chile'),
('Colombia'),
('Perú'),
('Venezuela'),
('España'),
('Francia'),
('Alemania'),
('Italia'),
('Reino Unido'),
('Japón'),
('China'),
('India'),
('Australia'),
('Sudáfrica');


CREATE TABLE Viajess (
    ID_Viaje INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Cedula_Viajero VARCHAR(20) NOT NULL,
    Cedula_Empleado VARCHAR(20) NOT NULL,
    Fecha_Ingreso DATE NOT NULL,
    Fecha_Salida DATE,
    Pais_Origen VARCHAR(100) NOT NULL,
    Pais_Destino VARCHAR(100) NOT NULL,
    FOREIGN KEY (Cedula_Viajero) REFERENCES Viajeros(Cedula_Viajero),
    FOREIGN KEY (Cedula_Empleado) REFERENCES Empleados(Cedula),
    FOREIGN KEY (Pais_Origen) REFERENCES Paisess(Nombre_Pais),
    FOREIGN KEY (Pais_Destino) REFERENCES Paisess(Nombre_Pais)
);