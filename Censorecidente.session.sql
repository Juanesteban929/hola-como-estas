CREATE TABLE parqueadero
(
    id_parqueadero SERIAL,
    num_parqueadero VARCHAR,
    matricula_parqueadero BIGINT,
    coef_parqueadero FLOAT
)

 CREATE TABLE mascota
 (
     id_mascota SERIAL,
     raza VARCHAR,
     nombre_mascota VARCHAR,
     especie_mascota VARCHAR,
     id_recidente INTEGER
 )

 CREATE TABLE residente
 (
     id_residente SERIAL,
     nombre_residente VARCHAR
    edad INTEGER,
    religion VARCHAR,
    id_representante INTEGER,
    lugar_trabajo VARCHAR,
    eps ,
    tel_residente,
    vacuna,
    condicion_salud,
    correo_residente,
    estado_civil
 )


--inserts (create)
 INSERT INTO parqueadero
(num_parqueadero,matricula_parqueadero,coef_parquedero) 
VALUES ('D10','370568945','12.48')

--seLects (Read)
SELECT num_parqueadero FROM parqueadero
WHERE id_parqueadero = '1'
