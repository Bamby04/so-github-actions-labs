#!/bin/bash
# Script de prueba para system-automation.yml

echo "Ejecutando script de automatización"

# Leer/escribir archivo
echo "Linea de prueba" >> app/data.txt
cat app/data.txt

# Cambiar permisos
chmod 644 app/data.txt

# Crear proceso en segundo plano
nohup python app/main.py &

# Manejo de errores
if [ $? -ne 0 ]; then
  echo "Error ejecutando script"
  exit 1
fi
