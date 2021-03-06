-- Borramos tablas que tengan el mismo nombre de las que crearemos
DROP TABLE MATRICULADO; --CASCADE CONSTRAINTS;
DROP TABLE CURSO; --CASCADE CONSTRAINTS;
DROP TABLE ESTUDIANTE; --CASCADE CONSTRAINTS;

-- Se crea la tabla CURSO
CREATE TABLE CURSO
(
    ID_CURSO NUMERIC(38) NOT NULL,
    NOMBRE_CURSO VARCHAR (4000),
    CODIGO_CURSO VARCHAR (4000),
    ID_DOCENTE NUMERIC(38) NOT NULL
);
-- Se crea la PK de la tabla CURSO. 
ALTER TABLE CURSO ADD CONSTRAINT CURSO_PK PRIMARY KEY (ID_CURSO);

-- Se crea la tabla ESTUDIANTE
CREATE TABLE ESTUDIANTE
(
    ID_ESTUDIANTE NUMERIC(38) NOT NULL,
    NOMBRES VARCHAR (4000),
    APELLIDOS VARCHAR (4000),
    RUN VARCHAR (4000)
);
-- Se crea la PK de la tabla ESTUDIANTE.
ALTER TABLE ESTUDIANTE ADD CONSTRAINT ESTUDIANTE_PK PRIMARY KEY (ID_ESTUDIANTE);

-- Se crea la tabla MATRICULADO
CREATE TABLE MATRICULADO
(
    ID_MATRICULADO NUMERIC(38) NOT NULL ,
    ID_CURSO       NUMERIC(38) NOT NULL ,
    ID_ESTUDIANTE  NUMERIC(38) NOT NULL
);
-- Se crea la PK de la tabla MATRICULADO
ALTER TABLE MATRICULADO ADD CONSTRAINT MATRICULADO_PK PRIMARY KEY (ID_MATRICULADO);

-- Se crea la relacion entre las tablas MATRICULADO y CURSO, donde el atributo ID_CURSO de la tabla MATRICULADO referencia al atributo ID_CURSO de la tabla CURSO.
ALTER TABLE MATRICULADO ADD CONSTRAINT MATRICULADO_CURSO_FK 
FOREIGN KEY (ID_CURSO) 
REFERENCES CURSO (ID_CURSO)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Se crea la relacion entre las tablas MATRICULADO y ESTUDIANTE, donde el atributo ID_ESTUDIANTE de la tabla MATRICULADO referencia al atributo ID_ESTUDIANTE de la tabla ESTUDIANTE.
ALTER TABLE MATRICULADO ADD CONSTRAINT MATRICULADO_ESTUDIANTE_FK 
FOREIGN KEY (ID_ESTUDIANTE) 
REFERENCES ESTUDIANTE (ID_ESTUDIANTE) 
ON DELETE CASCADE
ON UPDATE CASCADE;

