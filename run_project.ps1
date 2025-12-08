# ==============================================
# run_project.ps1
# Script para iniciar Flask y pytest en Windows
# ==============================================

# Ruta del proyecto (ajustar si es diferente)
$projectPath = "C:\Users\lenov\OneDrive\Documents\Desktop\Clases\#12 periodo\Sistema operativo\proyecto"

# Cambiar al directorio del proyecto
Write-Host "Cambiando al directorio del proyecto..."
cd "$projectPath"

# Activar entorno virtual
Write-Host "Activando entorno virtual..."
if (Test-Path ".\venv\Scripts\Activate.ps1") {
    & ".\venv\Scripts\Activate.ps1"
} else {
    Write-Error "No se encontró el entorno virtual. Primero crealo con: python -m venv venv"
    exit
}

# Configurar variables de entorno
Write-Host "Configurando variables de entorno..."
$env:ENV = "development"
$env:VERSION = "1.0.0"

# Ejecutar Flask
Write-Host "Iniciando Flask..."
Start-Process powershell -ArgumentList "-NoExit","-Command","python -m flask run"

# Ejecutar tests con cobertura
Write-Host "Ejecutando pytest con cobertura..."
python -m pytest --cov=app_web

