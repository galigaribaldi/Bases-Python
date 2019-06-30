CREATE TABLE IF NOT EXISTS califiacion(
    califiacion_id NUMBER(10) PRIMARY KEY,
    nombre_materia VARCHAR2(500) NOT NULL,
    califiacion NUMBER NOT NULL,
    fecha VARCHAR2(200) DEFAULT SYSDATE)
;

INSERT INTO califiacion(califiacion_id, nombre_materia, califiacion) VALUES(2,  "Matematicas", 10)
;
INSERT INTO califiacion(califiacion_id, nombre_materia, califiacion) VALUES(3,  "Civismo", 6)
;
INSERT INTO califiacion(califiacion_id, nombre_materia, califiacion) VALUES(4,  "Historia", 10)
;
INSERT INTO califiacion(califiacion_id, nombre_materia, califiacion) VALUES(5,  "Ingles", 8)
;
INSERT INTO califiacion(califiacion_id, nombre_materia, califiacion) VALUES(6,  "Computacion", 7)
;
INSERT INTO califiacion(califiacion_id, nombre_materia, califiacion) VALUES(7,  "Artes Plasticas", 6)
;
INSERT INTO califiacion(califiacion_id, nombre_materia, califiacion) VALUES(8,  "Taller", 10)
;

