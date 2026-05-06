#!/bin/sh
writefile=$1
writestr=$2

if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Error: Faltan parámetros."
    exit 1
fi

# Crear el directorio si no existe
mkdir -p "$(dirname "$writefile")"

# Escribir el archivo y verificar error
if ! echo "$writestr" > "$writefile"; then
    echo "Error: No se pudo crear el archivo."
    exit 1
fi
