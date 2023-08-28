# Desafío Kettle - NBCH:

Este repositorio contiene una solución para el desafío técnico que implica el procesamiento del archivo `artist_credit.csv` utilizando la herramienta Spoon de Pentaho Data Integration.
El objetivo es generar diferentes salidas basadas en una fecha proporcionada como parámetro.

## Requisitos

- Pentaho Data Integration (Kettle)
- Base de datos compatible con Pentaho (En este caso se utilizó PostgreSQL)
- Microsoft Excel (para visualizar el archivo de salida)
- [Archivo artist_credit.csv](https://drive.google.com/file/d/1fyqIMS4kS0e7nRucGHDZF0zOCXToj0Jq/view?usp=drive_link)

## Descarga del Archivo CSV

1. Descarga el archivo `artist_credit.csv` desde el enlace proporcionado.
2. Guarda el archivo CSV en la carpeta `/src` en el directorio raíz de este repositorio.

## Estructura del Repositorio

- `Transformations/`: Contiene las transformaciones de Pentaho (.ktr).
- `Jobs/`: Contiene el job de Pentaho (.kjb).
- `src/`: Carpeta para guardar el archivo CSV descargado y donde se exportarán los archivos excel y csv.
- `start.sh`: Archivo para ejecutar la aplicación Kettle.

## Uso

1. Clona este repositorio en tu sistema local utilizando el siguiente comando:

   ```sh
   git clone https://github.com/gonzalocandia92/NBCH-Desafio-Kettle
2. Edita la variable `ruta_pdi` dentro del archivo `start.sh` con la ruta ruta donde se encuentra instalado Pentaho

3. Crea una base de datos en PostgreSQL, en este caso se utilizó el nombre `desafio-kettle`.

4. Dentro de pentaho edita la conexión a la base de datos en PostgreSQL

5. Ejecuta el archivo start.sh.

6. Ingresa una fecha (YYYY-MM-DD), luego una hora (HH:MM:SS) para generar la fecha completa que servirá para el proceso de ETL.



---
Creado por [Gonzalo Ismael Candia Gonzalez](https://github.com/gonzalocandia92)

