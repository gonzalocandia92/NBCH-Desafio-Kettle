#!/bin/sh

# Modificar ruta_pdi con la ruta de instalación de pentaho en tu sistema local
ruta_pdi="/home/gonza/Descargas/pentaho/pdi-ce-9.4.0.0-343/data-integration"

echo "Ejecución de la transformación con Kitchen"
echo "-----------------------------------------"

# Función para validar el formato de fecha YYYY-MM-DD
validate_date() {
  date_pattern="^[0-9]{4}-[0-9]{2}-[0-9]{2}$"
  if echo "$1" | grep -E "$date_pattern" > /dev/null; then
    return 0
  else
    echo "Formato de fecha incorrecto. Por favor, use el formato YYYY-MM-DD."
    return 1
  fi
}

# Función para validar el formato de hora HH:MM:SS
validate_time() {
  time_pattern="^[0-9]{2}:[0-9]{2}:[0-9]{2}$"
  if echo "$1" | grep -E "$time_pattern" > /dev/null; then
    return 0
  else
    echo "Formato de hora incorrecto. Por favor, use el formato HH:MM:SS."
    return 1
  fi
}

# Solicitar y validar la fecha
while true; do
  read -p "Ingrese la fecha (formato: YYYY-MM-DD): " param_date
  if validate_date "$param_date"; then
    break
  fi
done

# Solicitar y validar la hora
while true; do
  read -p "Ingrese la hora (formato: HH:MM:SS): " param_time
  if validate_time "$param_time"; then
    break
  fi
done

# Combinar la fecha y la hora en un solo timestamp
timestamp="$param_date $param_time"

# Ruta actual del repositorio
repo_path=$(cd "$(dirname "$0")" && pwd)

# Ruta al archivo .kjb
ruta_archivo_kjb="$repo_path/Jobs/Job 1.kjb"

# Ejecución de la transformación utilizando Kitchen
"$ruta_pdi/kitchen.sh" -file:"$ruta_archivo_kjb" -param:param_date="$timestamp" -param:repo_path="$repo_path" -level=Minimal

echo "Fin de la ejecución"

