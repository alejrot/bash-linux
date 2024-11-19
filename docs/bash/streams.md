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

# Streams

## stdin

*stdin* es el "Standard Input" y se encarga de manejar la entrada de datos por teclado. 
Es el *stream estandar* numero **0**. 
En Linux y MAC el archivo de stdin se encuentra habitualmente en la ruta `/dev/stdin`.



Ejemplo de uso: se lee línea a línea la entrada de texto y se la deriva al servicio stdin
```bash
#se lee línea a línea la entrada de texto y se la deriva al servicio stdin
while read linea
do 
    echo linea
done < "${1:/dev/stdin}" #Linux / MAC
```
en Windows:
http://steve-jansen.github.io/guides/windows-batch-scripting/part-4-stdin-stdout-stderr.html

## stdout y stderr

stdout es el **Standard Output** (*stream 1* )  en tanto que stderr es el **Standard Error** (*stream 2*). 


Ejemplo: guardado de resultados del comando "ls" en dos archivos de texto
```bash
ls -l 1>salida.txt 2>errores.txt 
```

Guardado de resultados en un mismo archivo con los errores al comienzo 
```bash 
ls -l 1>resultado.txt 2>&1
```
Lo mismo con notación más sencilla
```bash
ls -l >& resultado.txt 
```

