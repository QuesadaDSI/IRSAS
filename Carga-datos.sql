DROP TRIGGER ID_ASADAS;
LOAD DATA LOCAL INFILE 'Datos/Provincias.csv' INTO TABLE PROVINCIA
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'Datos/Cantones.csv' INTO TABLE CANTON
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows;
  
LOAD DATA LOCAL INFILE 'Datos/Distritos.csv' INTO TABLE DISTRITO
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows;
  
LOAD DATA LOCAL INFILE 'Datos/Medidas.csv' INTO TABLE MEDIDA
  CHARACTER SET 'UTF8'
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows (Nombre);
  
LOAD DATA LOCAL INFILE 'Datos/Asadas.csv' INTO TABLE ASADA
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows;
  
LOAD DATA LOCAL INFILE 'Datos/Componentes.csv' INTO TABLE COMPONENTE
  CHARACTER SET 'UTF8'
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows (Nombre, Valor);
  
LOAD DATA LOCAL INFILE 'Datos/Subcomponentes.csv' INTO TABLE SUBCOMPONENTE
  CHARACTER SET 'UTF8'
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows (Nombre, Valor, Componente_ID, CantPreguntas, Siglas);
  
  
LOAD DATA LOCAL INFILE 'Datos/Indicadores.csv' INTO TABLE INDICADOR
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows (Codigo, Subcomponente_ID, Medida_ID, Nombre,Valor);
  
LOAD DATA LOCAL INFILE 'Datos/IndicadoresInfo.csv' INTO TABLE INDICADORINFO
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows (Indicador_ID,Descripcion,Formula,Fuente,Url,Responsable,Periodo,Observaciones,Frecuencia);
  
LOAD DATA LOCAL INFILE 'Datos/Nominales.csv' INTO TABLE NOMINAL
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows (Indicador_ID,Simbolo,Porcentaje,Valor);
  
LOAD DATA LOCAL INFILE 'Datos/Lineales.csv' INTO TABLE LINEAL
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows (Indicador_ID,Pendiente,Ordenada);
  
LOAD DATA LOCAL INFILE 'Datos/FillDat.csv' INTO TABLE INDICADORXASADA
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows (anno,Indicador_id,Asada_id,Valor,Texto);
  
LOAD DATA LOCAL INFILE 'Datos/AsadasInfo.csv' INTO TABLE ASADAINFO
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows (Asada_ID, Ubicacion, Telefono, Poblacion, Url,cantAbonados);

LOAD DATA LOCAL INFILE 'Datos/RANGOXINDICADOR.csv' INTO TABLE RANGOXINDICADOR
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows (INDICADOR_ID, MINIMO, MAXIMO);
  
LOAD DATA LOCAL INFILE 'Datos/Usuarios.csv' INTO TABLE USUARIO
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n' IGNORE 1 rows (Nombre, USUARIO, Contrasenna, Tipo);
  
LOAD DATA LOCAL INFILE 'Datos/AYUDAFORMULARIO.csv' INTO TABLE AYUDAFORMULARIO
    FIELDS TERMINATED BY ','
    OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n' IGNORE 1
    ROWS (INDICADOR_ID, AYUDA);

LOAD DATA LOCAL INFILE 'Datos/AYUDAXINDICADOR.csv' INTO TABLE AYUDAXINDICADOR
    FIELDS TERMINATED BY ','
    OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n' IGNORE 1
    ROWS (ID_INDICADOR,SUBCOMPONENTE,ID_TEXTO_MEJORA,LIMITE_INFERIOR,LIMITE_SUPERIOR,TEXTO_MEJORA);

    
INSERT INTO AYUDARIESGO (AYUDA) VALUES ("Un riesgo muy alto indica que el índice es mayor que 77%"), ("Un riesgo alto indica que el índice está entre 67% y 77%"), ("Un riesgo intermedio indica que el índice está entre 57% y 67%"), ("Un riesgo bajo indica que el índice está entre 47% y 57%"), ("Un riesgo muy bajo indica que el índice está entre 0% y 47%");

SOURCE trigger_id.sql;
