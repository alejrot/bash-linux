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



#  Pipe

La tubería (*pipe*) es un elemento auxiliar que permite concatenar comandos, 
esto es ejecutar un comando y pasar su resultado como argumento para el siguiente, 
separando los comandos con la barra vertical (signo `|`). 

Sintaxis general:

```bash
primer_comando | segundo_comando | tercer_comando | ...
```
Ejemplo: contar las filas que arroja el comando ls:
```bash
ls | wc -l  
```

listar archivos del directorio y ordenarlos en base a la columna Nº5:
```bash
ls -l | sort -k5        #orden ascendente
ls -l | sort -k5 -rn    #orden descendente
```
Los pipes pueden usarse dentro de rutinas.
Ejemplo: contar el numero de caracteres de una variable:
```bash
MENSAJE="hola mundo"
echo $MENSAJE | wc -m
```