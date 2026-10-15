CREATE DATABASE Taller_Normalizacion;

USE Taller_Normalizacion;

-- Estudiantes
CREATE TABLE Estudiantes (
    idEstudiante INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL
);

-- Cursos
CREATE TABLE Cursos (
    idCurso INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL UNIQUE
);

-- Docentes
CREATE TABLE Docentes (
    idDocente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL UNIQUE
);

-- Aulas
CREATE TABLE Aulas (
    idAula INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(45) NOT NULL UNIQUE
);

-- Horarios
CREATE TABLE Horarios (
    idHorario INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(45) NOT NULL UNIQUE
);

-- Asignaciones
CREATE TABLE Asignaciones (
    idAsignacion INT AUTO_INCREMENT PRIMARY KEY,
    idCurso INT NOT NULL,
    idDocente INT NOT NULL,
    idAula INT NOT NULL,
    idHorario INT NOT NULL,
    FOREIGN KEY (idCurso) REFERENCES Cursos(idCurso),
    FOREIGN KEY (idDocente) REFERENCES Docentes(idDocente),
    FOREIGN KEY (idAula) REFERENCES Aulas(idAula),
    FOREIGN KEY (idHorario) REFERENCES Horarios(idHorario),
    UNIQUE (idCurso, idDocente, idAula, idHorario)
);

-- Matriculas
CREATE TABLE Matriculas (
    idEstudiante INT NOT NULL,
    idAsignacion INT NOT NULL,
    PRIMARY KEY (idEstudiante, idAsignacion),
    FOREIGN KEY (idEstudiante) REFERENCES Estudiantes(idEstudiante),
    FOREIGN KEY (idAsignacion) REFERENCES Asignaciones(idAsignacion)
);