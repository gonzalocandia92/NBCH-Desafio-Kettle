#!/bin/bash
# Ruta actual

echo "Ejecución de la transformación con Kitchen"
echo "-----------------------------------------"

read -p "Ingrese la fecha (formato: YYYY-MM-DD): " param_date

# Ruta actual
path_repo=$(cd "$(dirname "$0")" && pwd)

# Cargar la variable ruta_pdi desde config.sh
source "$path_repo/config.sh"

# Ruta al archivo .kjb
ruta_archivo_kjb="$path_repo/Jobs/Job 1.kjb"

# Transformar la fecha ingresada en un timestamp con formato deseado
timestamp=$(date -d "$param_date 00:00:00" +"%Y-%m-%d %H:%M:%S")

# Ejecución de la transformación utilizando Kitchen
"$ruta_pdi"/kitchen.sh -file:"$ruta_archivo_kjb" -param:param_date="$timestamp" -level=Minimal

echo "Fin de la ejecución"

