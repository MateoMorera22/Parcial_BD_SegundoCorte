CREATE TABLE empleado (
    cc                    INTEGER NOT NULL,
    nombre                VARCHAR2(250 BYTE),
    primer_apellido       VARCHAR2(250 BYTE),
    segundo_apellido      VARCHAR2(250 BYTE),
    fecha_de_contratacion VARCHAR2(250 BYTE),
    edad                  INTEGER,
    sueldo                INTEGER,
    cargo_id_cargo        INTEGER NOT NULL,
    sede_id_sede          INTEGER NOT NULL,
    estrato_id_estrato    INTEGER NOT NULL
);

ALTER TABLE empleado ADD CONSTRAINT empleado_pk PRIMARY KEY ( cc );

CREATE TABLE cargo (
    id_cargo INTEGER NOT NULL,
    cargo    VARCHAR2(100 BYTE)
);

ALTER TABLE cargo ADD CONSTRAINT cargo_pk PRIMARY KEY ( id_cargo );

CREATE TABLE estrato (
    id_estrato INTEGER NOT NULL,
    estrato    VARCHAR2(100 BYTE)
);

ALTER TABLE estrato ADD CONSTRAINT estrato_pk PRIMARY KEY ( id_estrato );

CREATE TABLE sede (
    id_sede INTEGER NOT NULL,
    sede    VARCHAR2(100 BYTE)
);

ALTER TABLE sede ADD CONSTRAINT sede_pk PRIMARY KEY ( id_sede );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_cargo_fk FOREIGN KEY ( cargo_id_cargo )
        REFERENCES cargo ( id_cargo );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_estrato_fk FOREIGN KEY ( estrato_id_estrato )
        REFERENCES estrato ( id_estrato );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_sede_fk FOREIGN KEY ( sede_id_sede )
        REFERENCES sede ( id_sede );



select * from SEDE
select * from EMPLEADO
select * from ESTRATO
select * from CARGO

select count(*)
from EMPLEADO

select SEDE.SEDE,count(*)
from EMPLEADO
inner JOIN SEDE
on SEDE_ID_SEDE = ID_SEDE
group by SEDE.

select ESTRATO.ESTRATO,count(*)
from EMPLEADO
inner JOIN ESTRATO
on ESTRATO_ID_ESTRATO = ID_ESTRATO
group by ESTRATO.ESTRATO

select max(FECHA_DE_CONTRATACION)
from EMPLEADO

select min(FECHA_DE_CONTRATACION)
from EMPLEADO

select EMPLEADO.NOMBRE,SEDE.SEDE,CARGO.CARGO
from EMPLEADO
inner join SEDE
on SEDE_ID_SEDE = ID_SEDE
inner join CARGO
ON CARGO_ID_CARGO = ID_CARGO
where CC = '10662101'

DELETE FROM EMPLEADO
WHERE CC = '10188530'

Select (*)
from EMPLEADO
where FECHA_DE_CONTRATACION between 2000 and 2005

SELECT *
FROM EMPLEADO
WHERE FECHA_DE_CONTRATACION BETWEEN '01/01/2000' AND '31/12/2005'

SELECT NOMBRE,EDAD
from empleado
where FECHA_DE_CONTRATACION = '01/02/2014' OR FECHA_DE_CONTRATACION='01/01/1993'

SELECT *
FROM EMPLEADO
WHERE EDAD BETWEEN 17 AND 25

select AVG(EDAD)
from empleado