##!/bin/bash

echo "Ejecución de la transformación con Kitchen"
echo "-----------------------------------------"

read -p "Ingrese la fecha (formato: YYYY-MM-DD): " param_date

# Transformar la fecha ingresada en un timestamp con formato deseado
timestamp=$(date -d "$param_date 00:00:00" +"%Y-%m-%d %H:%M:%S")

# Ruta al archivo .kjb
ruta_archivo_kjb="/home/gonza/Documentos/NBCH/DesafioKettle/Jobs/Job 1.kjb"

# Ejecución de la transformación utilizando Kitchen
/home/gonza/Descargas/pentaho/pdi-ce-9.4.0.0-343/data-integration/kitchen.sh -file:"$ruta_archivo_kjb" -param:param_date="$timestamp"

echo "Fin de la ejecución"

