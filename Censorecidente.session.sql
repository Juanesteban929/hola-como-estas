CREATE TABLE parqueadero
(
    id_parqueadero SERIAL,
    num_parqueadero VARCHAR,
    matricula_parqueadero BIGINT,
    coef_parqueadero FLOAT,
    CONSTRAINT pk_parqueadero PRIMARY KEY (id_parqueadero),
    CONSTRAINT fk_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
)

 CREATE TABLE mascota
 (
     id_mascota SERIAL,
     raza VARCHAR,
     nombre_mascota VARCHAR,
     especie_mascota VARCHAR,
     id_recidente INTEGER,
      CONSTRAINT pk_mascota PRIMARY KEY (id_mascota)
    CONSTRAINT fk_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
 )

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
    CONSTRAINT pk_residente PRIMARY KEY (id_residente)

 )


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





--inserts (create)
 INSERT INTO parqueadero
(num_parqueadero,matricula_parqueadero,coef_parquedero) 
VALUES ('D10','370568945','12.48')

--seLects (Read)
SELECT num_parqueadero FROM parqueadero
WHERE id_parqueadero = '1'
