-- Active: 1689164810378@@localhost@3306

CREATE DATABASE MER_citas_medicas;

USE MER_citas_medicas;

CREATE TABLE
    tipo_documento(
        tipdoc_id INT PRIMARY KEY,
        tipdoc_nombre VARCHAR(20),
        tipdoc_abreviatura VARCHAR(20)
    );

CREATE TABLE
    genero(
        gen_id INT PRIMARY KEY,
        gen_nombre VARCHAR (20),
        gen_abreviatura VARCHAR (20)
    );

CREATE TABLE
    acudiente(
        acu_codigo INT PRIMARY KEY,
        acu_nombreCompleto VARCHAR(100),
        acu_telefono VARCHAR(100),
        acu_direccion VARCHAR(200)
    );

CREATE TABLE
    estado_cita(
        estcita_id INT PRIMARY KEY,
        estcita_nombre VARCHAR (20)
    );

CREATE TABLE
    especialidad(
        esp_id INT PRIMARY KEY,
        esp_nombre VARCHAR(20)
    );

CREATE TABLE
    consultorio(
        cons_codigo INT PRIMARY KEY,
        cons_nombre VARCHAR(50)
    );

CREATE TABLE
    medico(
        med_nroMatriculaProsional INT,
        med_nombreCompleto VARCHAR(120),
        med_consultorio INT,
        med_especialidad INT
    );

CREATE TABLE
    usuario(
        usu_id INT PRIMARY KEY,
        usu_nombre VARCHAR(50),
        usu_segdo VARCHAR(45),
        usu_primer_apellido_usuar VARCHAR(50),
        usu_segdo_apellido_usuar VARCHAR(50),
        usu_telefono VARCHAR(50),
        usu_direccion VARCHAR(100),
        usu_email VARCHAR(100),
        usu_tipodoc INT,
        FOREIGN KEY (usu_tipodoc) REFERENCES tipo_documento(tipdoc_id),
        usu_genero INT,
        FOREIGN KEY (usu_genero) REFERENCES genero(gen_id),
        usu_acudiente INT,
        FOREIGN KEY (usu_acudiente) REFERENCES acudiente(acu_codigo)
    );

INSERT INTO
    tipo_documento (
        tipdoc_nombre,
        tipdoc_abreviatura
    )
VALUES ("Tarjeta de Identidad", "TI");

INSERT INTO
    genero (gen_nombre, gen_abreviatura)
VALUES ("Femenino", "Fem");

INSERT INTO
    acudiente (
        acu_nombreCompleto,
        acu_telefono,
        acu_direccion
    )
VALUES (
        "Paquita la del barrio",
        "3188431153",
        "Calle 21 nº 4125"
    );

INSERT INTO especialidad(esp_nombre) VALUES("Medicina General");

INSERT INTO consultorio(cons_nombre) VALUES ("titi preguntó");

INSERT INTO
    estado_cita (estcita_nombre)
VALUES ("ACTIVA"), ('SUPENDIDA'), ('CANCELADA'), ('PERDIDA');

INSERT INTO
    medico (
        med_nroMatriculaProsional,
        med_nombreCompleto,
        med_consultorio,
        med_especialidad
    )
VALUES (
        "465899584",
        "David Rojas",
        1,
        1
    );

INSERT INTO
    usuario (
        usu_id,
        usu_nombre,
        usu_segdo_nombre,
        usu_primer_apellido_usuar,
        usu_segdo_apellido_usuar,
        usu_telefono,
        usu_direccion,
        usu_e_mail,
        usu_tipodoc,
        usu_genero,
        usu_acudiente
    )
VALUES (
        1098817567,
        "Dani",
        "",
        "Zapata",
        "Mora",
        "315277162",
        "LOS HEROES",
        "naniz110504@gmail.com",
        1,
        1,
        1
    );

INSERT INTO
    cita(
        cit_fecha,
        cit_estadoCita,
        cit_medico,
        cit_datosUsuario
    )
VALUES (
        "2023-07-12 10:30:00",
        1,
        465899584,
        1098817567
    )
    INSERT INTO especialidad(esp_nombre) VALUES ("Cardiología");
insert into especialidad (esp_nombre) values ('Neumología');
insert into especialidad (esp_nombre) values ('Geriatría');
insert into especialidad (esp_nombre) values ('Hematología y hemoterapia');
insert into especialidad (esp_nombre) values ('Nefrología');
insert into especialidad (esp_nombre) values ('Neurología');
insert into especialidad (esp_nombre) values ('Pediatría ');
insert into especialidad (esp_nombre) values ('Psiquiatría');
insert into especialidad (esp_nombre) values ('Rehabilitación');
insert into especialidad (esp_nombre) values ('Reumatología chloride');
insert into especialidad (esp_nombre) values ('Neurocirugía');