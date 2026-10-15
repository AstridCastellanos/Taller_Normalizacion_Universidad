-- Mostrar el nombre del estudiante y el nombre del curso que reciben
SELECT E.Nombre AS Estudiante, C.Nombre AS Curso
FROM Estudiantes E
JOIN Matriculas M ON E.idEstudiante = M.idEstudiante
JOIN Asignaciones A ON M.idAsignacion = A.idAsignacion
JOIN Cursos C ON A.idCurso = C.idCurso
ORDER BY E.Nombre;

-- Mostrar el nombre de un curso y el docente que lo imparte, buscando por nombre del docente
SELECT C.Nombre AS Curso, D.Nombre AS Docente
FROM Cursos C
JOIN Asignaciones A ON C.idCurso = A.idCurso
JOIN Docentes D ON A.idDocente = D.idDocente
WHERE D.Nombre = 'Carlos Gómez';

-- Mostrar el nombre del curso y cuántos estudiantes están asignados
SELECT C.Nombre AS Curso, COUNT(M.idEstudiante) AS Total_Estudiantes
FROM Cursos C
JOIN Asignaciones A ON C.idCurso = A.idCurso
JOIN Matriculas M ON A.idAsignacion = M.idAsignacion
GROUP BY C.Nombre;

-- Mostrar los horarios disponibles y los cursos en esos horarios
SELECT H.Nombre AS Horario, C.Nombre AS Curso
FROM Horarios H
JOIN Asignaciones A ON H.idHorario = A.idHorario
JOIN Cursos C ON A.idCurso = C.idCurso;

-- Mostrar el nombre del estudiante, del curso asignado, el aul y el horario buscando por nombre de estudiante
SELECT E.Nombre AS Estudiante, C.Nombre AS Curso, Au.Nombre AS Aula, H.Nombre AS Horario
FROM Estudiantes E
JOIN Matriculas M ON E.idEstudiante = M.idEstudiante
JOIN Asignaciones A ON M.idAsignacion = A.idAsignacion
JOIN Cursos C ON A.idCurso = C.idCurso
JOIN Aulas Au ON A.idAula = Au.idAula
JOIN Horarios H ON A.idHorario = H.idHorario
WHERE E.Nombre = 'Juan Pérez';