#!/bin/sh
# Asignación de argumentos
filesdir=$1
searchstr=$2

# Validación de parámetros
if [ -z "$filesdir" ] || [ -z "$searchstr" ]; then
    echo "Error: Faltan parámetros."
    exit 1
fi

# Validación de directorio
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir no es un directorio."
    exit 1
fi

# Cálculos
X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"
