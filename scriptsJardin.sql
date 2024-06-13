SELECT * FROM jardin.empleados_relacion;

SELECT *
FROM Empleados_Relacion
WHERE fecha_inicio > '2024-04-01';

UPDATE Empleados_Relacion
SET fecha_fin = '2024-06-09', esta_activo = 0
WHERE fecha_inicio > '2024-04-01';


SET SQL_SAFE_UPDATES = 0;
