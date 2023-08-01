# Instrucciones de instalación y configuración

## Requisitos previos
- XAMPP instalado en su computadora para poder ejecutar el proyecto localmente.

## Descargar y configurar el proyecto
1. Descargue la carpeta del proyecto desde el repositorio de GitHub.

2. Adicionalmente, descargue el archivo de la base de datos en formato .sql desde el repositorio.

3. La base de datos actualmente se encuentra montada en un servidor, pero si desea tener una copia local de la base de datos, deberá seguir los siguientes pasos:
   - Diríjase al archivo `./libs/config.php`.
   - En ese archivo, cambie los datos de conexión a la base de datos con los valores correspondientes de su entorno local.

## Ejecutar el proyecto

4. Asegúrese de tener XAMPP ejecutándose y los servicios de Apache y PostgreSQL activados.

5. Coloque la carpeta del proyecto descargado en la carpeta `htdocs` de XAMPP.

6. Acceda al proyecto a través de su navegador web mediante la siguiente URL: `http://localhost/nombre-de-la-carpeta-del-proyecto`.

## Importante: No modificar el archivo .htaccess

El proyecto cuenta con un archivo llamado `.htaccess`, el cual está configurado para manejar URLs amigables y permitir un mejor manejo de los controladores. Por lo tanto, es fundamental no modificar ni tocar este archivo para evitar problemas en el funcionamiento del proyecto.

## Versión de PHP y PostgreSQL

El proyecto fue desarrollado utilizando PHP 8.1.6 y PostgreSQL 14.8. Se recomienda asegurarse de tener estas versiones instaladas para un correcto funcionamiento.

## Estructura del proyecto

El proyecto ha sido estructurado siguiendo la metodología Modelo-Vista-Controlador (MVC) para mantener un código organizado y limpio.

Si necesita realizar modificaciones o ajustes, puede acceder a los archivos y carpetas del proyecto para realizar las modificaciones necesarias.