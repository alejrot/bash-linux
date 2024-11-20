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



# Verificar ficheros

Con el comando `test`se verifica 

Para revisar si un archivo o carpeta existe se puede usar el comando `test` con las opciones `-d` y `-f`:
```bash
test -f nombre_fichero        # verificar archivo
test -d nombre_directorio     # verificar carpeta
```


| Command | Description              |
|:---:|:------|
| -e      | archivo o carpeta existente    |
| -f      | archivo existente               |
| -d      | carpeta existente          |
| -s      | archivo con espacio mayor a 0 |
| -L      | es un enlace     |
| -S      | es un *socket*              |
| -x|  archivo con permisos de ejecucion |


ejemplo de uso: condicionales *if*
```bash
# verificar existencia carpeta
if [ -d $carpeta ] 
then
    echo "$carpeta existe"
fi
# verificar existencia archivo
if [ -f $archivo ]
then
    echo "$archivo existe"
fi
```



## Referencias:

[Linux Handbook - Using test Command in Bash Scripts](https://linuxhandbook.com/bash-test-command/)