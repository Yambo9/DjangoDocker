# Usa una imagen base oficial de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requerimientos
COPY requirements.txt .

# Instala las dependencias desde el archivo requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código fuente al contenedor
COPY . .

# Exponer el puerto en el que Django va a correr
EXPOSE 8000

# Comando para correr la aplicación de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]