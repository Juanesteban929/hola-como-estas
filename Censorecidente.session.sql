CREATE TABLE parqueadero
(
    id_parqueadero SERIAL,
    num_parqueadero VARCHAR,
    matricula_parqueadero BIGINT,
    coef_parqueadero FLOAT,
    CONSTRAINT pk_parqueadero PRIMARY KEY (id_parqueadero)
    
)
--inserts (create)
 INSERT INTO parqueadero
(num_parqueadero,matricula_parqueadero,coef_parquedero)
VALUES ('D11','370568978','12.38') 

INSERT INTO parqueadero
(num_parqueadero,matricula_parqueadero,coef_parquedero) 
VALUES ('D12','370568979','12.39')


--seLects (Read)
SELECT num_parqueadero FROM parqueadero
WHERE id_parqueadero = '1'

SELECT * FROM parqueadero


 CREATE TABLE mascota
 (
     id_mascota SERIAL,
     raza VARCHAR,
     nombre_mascota VARCHAR,
     especie_mascota VARCHAR,
     id_recidente INTEGER,
      CONSTRAINT pk_mascota PRIMARY KEY (id_mascota)
 )
INSERT INTO mascota
(raza,nombre_mascota,especie_mascota,id_residente)
VALUES ('doberman','titan','especie unica')

INSERT INTO mascota
(raza,nombre_mascota,especie_mascota,id_residente)
VALUES ('dogo argentino','titano','especie unica')


SELECT nom_mascota FROM mascota WHERE id_mascota = '1'

SELECT * FROM mascota

 CREATE TABLE residente
 (
     id_residente SERIAL,
     nombre_residente VARCHAR,
     apellido_residente VARCHAR,
    edad INTEGER,
    religion VARCHAR,
    id_representante INTEGER,
    lugar_trabajo VARCHAR,
    eps VARCHAR,
    tel_residente VARCHAR,
    vacuna VARCHAR,
    condicion_salud VARCHAR,
    correo_residente VARCHAR,
    estado_civil VARCHAR,
    CONSTRAINT pk_residente PRIMARY KEY (id_residente),
     CONSTRAINT fk_mascota FOREIGN KEY (id_mascota) REFERENCES mascota(id_mascota)
 )
INSERT INTO residente
( nombre_residente,apellido_residente,edad,religion,
lugar_trabajo,eps,tel_residente,vacuna,condicion_salud,correo_residente,estado_civil )
VALUES('esteban','marin','22','catolico','tarrito rojo fabrica','emsanar'
,'30070908345','pfizer','exelentes','estebanmarin@gmail.com','soltero' )

INSERT INTO residente
( nombre_residente,apellido_residente,edad,religion,
lugar_trabajo,eps,tel_residente,vacuna,condicion_salud,correo_residente,estado_civil )
VALUES('maria jose','gomez','32','adventista','spa','emsanar'
,'3047227689','pfizer','exelentes','majogom@gmail.com','soltera')

SELECT nombre_residente FROM residente
WHERE id_residente = '1'

SELECT * FROM residente



CREATE TABLE apartamento
(
    id_apto serial,
    matricula_apto VARCHAR,
    num_apto VARCHAR,
    bloque VARCHAR,
    coef_apto FLOAT,
    CONSTRAINT pk_apartamento PRIMARY KEY (id_apto),
    CONSTRAINT fk_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
)

INSERT INTO apartamento
(matricula_apto,num_apto,bloque,coef_apto )
VALUES('3s-232494843','11','2','0.10' )

INSERT INTO apartamento
( matricula_apto,num_apto,bloque,coef_apto )
VALUES('3s-2324954844','12','2','0,10')

SELECT num_apto FROM apartamento
WHERE id_residente = '1'

SELECT * FROM apartamento

CREATE TABLE vehiculo
(
    id_vehiculo SERIAL,
    tipo_de_vehiculo VARCHAR,
    placa VARCHAR,
    modelo VARCHAR,
    marca VARCHAR,
    id_residente INTEGER,
    CONSTRAINT pk_vehiculo PRIMARY KEY (id_vehiculo),
CONSTRAINT fk_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
)
INSERT INTO vehiculo
(tipo_vehiculo,placa,modelo,marca )
VALUES('mazda3','def213','2020','mazda')

INSERT INTO vehiculo
( tipo_vehiculo,placa,modelo,marca )
VALUES('tx.l','efd455','2021','toyota')

SELECT placa FROM vehiculo
WHERE id_vehiculo = '1'

SELECT * FROM vehiculo


CREATE TABLE propietario
(
    id_propietario SERIAL,
    tipo_doc_propietario VARCHAR,
    num_identificacion VARCHAR,
    tel_propietario BIGINT,
    nom_propietario VARCHAR,
    apell_propietario VARCHAR,
    ocupacion VARCHAR,
    edad SMALLINT,
    vacuna BOOLEAN,
    razon_social VARCHAR,
    corrreo_propietario VARCHAR,
    CONSTRAINT pk_propietario PRIMARY KEY (id_propietario),
)
INSERT INTO propietario
( tipo_doc_propietario,num_identificacion,tel_propietario,nom_propietario,
apell_propietario,ocupacion,edad,vacuna,razon_social,corrreo_propietario )
VALUES('cc','1130430234','3014563455','diego','fernandez','jefe de empresa',
'34','moderna','mazda','diegol@gmail.com' )

INSERT INTO prpietario
( tipo_doc_propietario,num_identificacion,tel_propietario,nom_propietario,
apell_propietario,ocupacion,edad,vacuna,razon_social,corrreo_propietario )
VALUES('cc','1130430246','3014563556','maria del mar','perlaza','gerente',
'36','moderna','sr wok','mariamar08@gmail.com' )

SELECT nom_propietario FROM propietario
WHERE id_propietario = '1'

SELECT * FROM propietario




