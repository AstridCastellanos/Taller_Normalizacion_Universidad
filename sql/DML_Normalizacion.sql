USE Taller_Normalizacion;

-- Estudiantes
INSERT INTO Estudiantes (Nombre) VALUES 
('Juan Pérez'),
('María Gómez'),
('Luis Ramírez'),
('Ana Morales'),
('Laura Rodríguez'),
('Daniel Hernández'),
('Carolina Sánchez'),
('Mario López');

-- Cursos
INSERT INTO Cursos (Nombre) VALUES 
('Algoritmos'),
('Redes'),
('Bases de Datos');

-- Docentes
INSERT INTO Docentes (Nombre) VALUES 
('Carlos Gómez'),
('María Martínez'),
('José Rodríguez');

-- Aulas
INSERT INTO Aulas (Nombre) VALUES 
('Aula 101'),
('Aula 102'),
('Aula 103');

-- Horarios
INSERT INTO Horarios (Nombre) VALUES 
('martes 10-12'),
('Martes 14-16'),
('martes 8-10');

-- Asignaciones
INSERT INTO Asignaciones (idCurso, idDocente, idAula, idHorario) VALUES 
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3);

-- Matrículas
INSERT INTO Matriculas (idEstudiante, idAsignacion) VALUES 
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 1),
(7, 2),
(8, 3);