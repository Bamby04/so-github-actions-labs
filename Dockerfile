# Dockerfile
FROM python:3.11-slim

# Directorio de trabajo
WORKDIR /app

# Copiar archivos
COPY requirements.txt .
COPY app/ ./app
COPY tests/ ./tests

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Comando por defecto
CMD ["python", "app/main.py"]
