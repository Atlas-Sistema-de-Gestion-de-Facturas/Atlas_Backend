# Atlas: Sistema de Gestión de Facturas

## Descripción

El backend de **Atlas** está desarrollado principalmente con **Django** y **Django Rest Framework**, dos de los frameworks más robustos y populares para la creación de aplicaciones web y APIs. Se han adoptado buenas prácticas de desarrollo, tales como:

- **pyenv**: Para la gestión de versiones de Python, garantizando un entorno controlado y consistente utilizando la versión **3.12.8** de Python.
- **Poetry**: Un gestor de dependencias y entornos virtuales moderno que facilita la administración de bibliotecas y mejora la experiencia de desarrollo.
- **django-environ**: Para la gestión de variables de entorno de manera segura y eficiente, permitiendo una configuración flexible y centralizada tanto en los entornos de producción como de desarrollo.
- **Docker**: Utilizamos **Docker** para la creación de contenedores que facilitan la configuración, despliegue y escalabilidad del proyecto. Esto permite que el entorno de desarrollo y producción sea consistente y fácilmente replicable en diferentes máquinas, reduciendo problemas de compatibilidad.


### Base de Datos

El sistema de gestión de facturas utiliza [**Neon**](https://neon.tech/) como host para la base de datos **PostgreSQL**, lo que garantiza una solución escalable, de alto rendimiento y completamente gestionada.


## Instalación

1. Clona este repositorio:
   ```bash
   git clone https://github.com/Atlas-Sistema-de-Gestion-de-Facturas/Atlas_Backend && cd Atlas_Backend
   ```

2. Recomendamos usar [**pyenv**](https://github.com/pyenv/pyenv?tab=readme-ov-file#installation), también puedes usar simplemente la versión de python 3.12.8

    ```bash
    pyenv install 3.12.8
    ```

3. Instalamos las dependencias usando [**Poetry**](https://python-poetry.org/docs/#installing-with-the-official-installer)
   
   ```bash
   poetry config virtualenvs.prefer-active-python true && poetry install
   ```

4. Activamos el entorno virtual
   ```bash
   poetry shell
   ```

5. Copia la plantilla y configura tu archivo .env
   ```bash
   cp .env.example .env
   ```

6. Para crear a los administradores de nuestra aplicación reutilizamos el comando por defecto de Django, usa el siguiente comando en la consola
   ```bash
   python manage.py createsuperuser
   ```

7. Hacemos las migraciones correspondientes
   ```bash
   python manage.py makemigrations && python manage.py migrate
   ```

8. Ejecutamos el comando para iniciar el servidor en desarrollo
   ```bash
   python manage.py runserver
   ```