# Usa una imagen base de Python
FROM ubuntu:24.04

# Instala Python y Poetry
RUN apt update -y && apt upgrade -y && apt install -y python3 python3-pip curl && curl -sSL https://install.python-poetry.org | python3 - 

# Establece el directorio de trabajo
WORKDIR /app

# Copia el resto del código de la aplicación
COPY . .

# Establece el PATH para Poetry
ENV PATH="/root/.local/bin:$PATH"

# Instala las dependencias de la aplicación
RUN poetry install

# Expone el puerto 8000
EXPOSE 8000

# Comando para ejecutar el servidor de desarrollo de Django
CMD ["poetry", "run", "python", "manage.py", "runserver", "0.0.0.0:8000"]