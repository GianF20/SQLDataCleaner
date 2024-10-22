-- Borrar Tabla ya existente de "Empleados"
IF OBJECT_ID('Empleados', 'U') IS NOT NULL
    DROP TABLE Empleados;

-- Crear Tabla "Empleados" con Nombre, Puesto, Fecha de contratación y Salario
CREATE TABLE Empleados (
    ID INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Puesto NVARCHAR(50),
    FechaContratacion DATE,
    Salario DECIMAL(10, 2)
);

-- Insertar empleado N°1
INSERT INTO Empleados (ID, Nombre, Puesto, FechaContratacion, Salario)
VALUES (1, N'Juan Pérez', N'Analista', '2023-05-10', 45000.00);

-- Insertar empleados 2, 3 y 4
INSERT INTO Empleados (ID, Nombre, Puesto, FechaContratacion, Salario)
VALUES
(2, N'María Gómez', N'Gerente', '2020-01-15', 60000.00),
(3, N'Carlos Luna', N'Técnico', '2021-03-20', 38000.00),
(4, N'Ana López', N'Especialista', '2022-06-01', 48000.00);

-- Mostrar datos de todos los empleados
SELECT * FROM Empleados;

-- Mostrar empleados con salarios mayores a 40,000.
SELECT * FROM Empleados
WHERE Salario > 40000;

-- Actualiza el salario de un empleado específico.
UPDATE Empleados
SET Salario = 50000
WHERE ID = 1;

-- Eliminar el registro del empleado con ID 1.
DELETE FROM Empleados
WHERE ID = 1;

-- Contar el número total de empleados.
SELECT COUNT(*) AS TotalEmpleados FROM Empleados;

-- Obtener el salario promedio de los empleados.
SELECT AVG(Salario) AS SalarioPromedio FROM Empleados;

-- Agrupar empleados por su puesto y contar cuántos hay en cada puesto.
SELECT Puesto, COUNT(*) AS NumeroEmpleados
FROM Empleados
GROUP BY Puesto;

