# Usar la imagen oficial de Python como base
FROM python:3.11-slim

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar el archivo de requerimientos al contenedor
COPY requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el contenido de la aplicación a /app
COPY . .

# Exponer el puerto en el que correrá la aplicación
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
