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

# Primeros comandos

## Terminales en linux
Conocer las rutas a las terminales disponibles en la distribución Linux usada:
```bash
cat /etc/shells 
```
Verificar la terminal en uso
```bash
echo $SHELL
```
Mostrar un texto en la terminal:
```bash
echo "mi_texto"
```



## Guardar texto desde terminal
Guardar un texto corto en archivo:
```bash
echo "< mi texto>" > nombre_archivo.txt
```
Preparar un archivo script que guarde un texto ingresado desde terminal:
```bash
#! <ruta_terminal>
cat >  <archivo_texto>
```
Entonces al abrir el ejecutable desde la terminal:
```bash
./<script.sh>
```
se guardará todo lo escrito en ella cada vez que se pulse 'ENTER' hasta que la terminal se cierre. Esto puede hacerse con 'Ctrl' + 'C'.

El texto ingresado modificará al anterior. Para que el texto se añada al final del archivo se usa '>>':
```bash
#! <ruta_terminal>
cat >>  <archivo_texto>
```



## Delimitador Cat

El comando 'cat' sirve también para presentar un mensaje en la terminal usando ''<<''
```bash
cat << <delimitador>
<mensaje>
<delimitador>
``` 
Ejemplo de uso:
```bash
cat << miTexto
Los hermanos sean unidos
esa es la ley primera
que si entre ellos se pelean 
no pueden compartir la cuenta de Netflix
miTexto
``` 