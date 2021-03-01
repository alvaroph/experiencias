# Proyecto Experiencias

Trataremos de reproducir el proyecto de Mis Viajes con VUE + una API ya montada.

## Backend

Para montar el backend disponeis de una base de datos muy sencilla que teneis que montar en el labs. El fichero api.php lo teneis que subir a una carpeta del labs. Teneis que configurar el fichero api.php en las últimas lineas de código. 
Para usar el fichero api.php tenéis información en esta URL:
https://github.com/mevdschee/php-crud-api

Un ejemplo de URL de consulta (GET) del api es la siguiente:
http://labs.iam.cat/~aperezh/demo_experiencias_aph/api.php/records/EXPERIENCIA

En clase veremos ejemplos de uso CRUD de la api. 

## Project setup de la parte front
Para poder montar el entorno de fron necesitareis instalar todas las dependencias del proyecto

```
npm install
```
El proyecto está por empezar, tenéis instalado bootstrap-vue y axios-vue. 


### Compiles and hot-reloads for development
```
npm run serve
```

### Como subir el proyecto al labs
Primero tenéis que generar el proyecto para producción (recordad a eliminar la \ en la configuración de vue-ui)
```
npm run build
```
Una vez generado podreis subir la carpeta dist al labs. 

### Lints and fixes files
```
npm run lint
```
