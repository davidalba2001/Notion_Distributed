# Usa una imagen base de Python
FROM python:3.11-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Instala dependencias solo si cambia requirements.txt
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copia solo el código fuente
COPY . .

# Expone el puerto 5000 para el servidor
#EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python3", "-u", "run.py"]

