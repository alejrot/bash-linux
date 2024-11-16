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

# Comandos de Bash


## uname

## pwd

## cd

## chmod

## chown

## touch


## mv *(move)*


Referencias: [DelfStack - ...using MV command](https://www.delftstack.com/es/howto/linux/how-to-move-files-and-directories-in-linux-using-mv-command/)



## cp *(copy)*

Referencias: [Ionos - comando CP de Linux ](https://www.ionos.es/digitalguide/servidores/configuracion/comando-cp-de-linux/)

https://itsfoss.com/es/comando-mv/

## rm *(remove directory)*

Elimina archivos . También sirve para la eliminación recursiva de carpetas y su contenido.

Eliminar archivos:
```bash
rm ruta_archivo # elimina el archivo
```

Eliminar archivos (forzar):
```bash
rm -f ruta_archivo # elimina el archivo (forma forzada)
```

Eliminar una carpeta y todo su contenido:

```bash
rm -r ruta_carpeta # elimina la carpeta y todo su contenido
```
Eliminar archivos que comienzan con guión (**-**):
```bash
rm -- archivo_guion
```




## mkdir *(make directory)*

Crea una carpeta vacía.
```bash
mkdir nombre_carpeta        # creacion en ruta actual
mkdir ruta/nombre_carpeta   # creacion en ruta elegida
```

## rmdir

Elimina las carpetas indicadas en caso de que estén vacías.
```bash
rmdir <carpeta>
```



## ls


## wc

Comando *word count*
Contar palabras:
```bash
wc <archivo_texto>
```
Contar filas de texto;
```bash
wc -l <archivo_texto>
```
Contar caracteres:
```bash
wc -m <archivo_texto>
```





## find

Buscar recursivamente archivos con extension 


```bash

find ruta -type f -name "*.<extension>"

# Ejemplo: buscar archivos con extension MD
find . -type f -name '*.md'

```

Referencias: [Digital Ocean - como usar Find y Locate en Linux ](https://www.digitalocean.com/community/tutorials/how-to-use-find-and-locate-to-search-for-files-on-linux-es)

## basename



## awk

https://geekland.eu/uso-del-comando-awk-en-linux-y-unix-con-ejemplos/

## grep

https://www.hostinger.es/tutoriales/comando-grep-linux

## sed

https://www.hostinger.es/tutoriales/el-comando-sed-de-linux-usos-y-ejemplos/



## Curl

Curl es un comando que permite hacer peticiones de distintos protocolos y se usa mucho para HTTP.
Se usa:
```bash
curl <url_servidor>
```
Para ver sólo los headers de la url
```bash
curl -I <url_servidor>
```
Para ver headers y contenido:
```bash
curl -i <url_servidor>
```