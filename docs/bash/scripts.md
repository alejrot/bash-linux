---
tags:
# - HTML
# - JavaScript
# - CSS
# - YAML
# - Python
# - Docker
# - Podman
# - MarkDown
# - MkDocs
# - TypeScript
# - CSV
- Bash
# - Linux
# - GNU
# - Debian
# - Arch
# - Fedora
---


# Scripts

## Script Hola Mundo!
Directorio actual:
```bash
pwd
```
Crear un directorio
```bash
mkdir <nombre-carpeta>
```
Moverse a un subdirectorio
```bash
cd <nombre-carpeta>
```
Crear un archivo ejecutable por la terminal:
```bash
touch <archivo.sh>
```
la terminación *.sh* es por convención.


**Importante:** Dentro del archivo **SIEMPRE** escribir como primera linea la ruta a la terminal:
```bash
#! <ruta_terminal>
```
y a continuación el resto de comandos.

Ejemplo en Windows:
```bash
#! /usr/bin/bash
echo "Hallo Welt!"
```
Ejemplo en Linux:
```bash
#! /bin/bash
echo "Hallo Welt!"
```


## permisos de ejecución

Verificar las propiedades de los archivos se puede usar el comando:
```bash
ls -al
```
Dar permisos de ejecución al archivo:
```bash
chmod +x nombre_archivo.sh
``` 
Ejecutar el archivo:
```bash
./<archivo.sh>
```

Quitar permisos de ejecución al archivo:
```bash
chmod -x nombre_archivo.sh
``` 






## Comentarios
Los comentarios de una línea comienzan en numeral (#):
```bash
# Un comentario breve
```
Los comentarios de varias líenas empoiezan en dos puntos, espacio y comilla simple (**: '**) y terminan en comilla simple (**'**):
```bash
: 'Si la virtud de la brevedad no tener
dos puntos, espacio y comillas usar'
```



## Concatenando Scripts - Importación y Exportación

En este ejemplo se crean dos archivos de script llamados "primero.sh" y "segundo.sh" almacenados en un mismo directorio

Primer archivo:

```bash
#se crea y exporta una variable
MENSAJE="Yo soy Sam"
export MENSAJE     

#se invoca al otro ejecutable
./segundo.sh
```
Segundo archivo:

```bash
echo "Leer mensaje:"
echo "$MENSAJE"
```


## Debugging

El debug (ejecución paso a paso) de una rutina completa se la puede hacer con la opcion *x*:
```bash
bash -x <rutina>.sh
```
Para poner a prueba sólo un trozo de rutina ésta se puede marcar dentro del archivo entre los comandos "set -x" y "set +x":
```bash
set -x
<rutina a debuguear>
set +x
```


