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



# Argumentos de entrada

Se leen los primeros tres argumentos de entrada del script:
```bash
echo $1 $2 $3 
```
Leer todos los argumentos $\rightarrow$ usar el **arroba**:
```bash
echo $@
```
Contar todos los argumentos dados $\rightarrow$ usar el **numeral**:
```bash
echo $#
```
Cargar todos los argumentos a una lista:
```bash
args=("$@")
```
Cargar el numero de argumentos a una variable:
```bash
n=("$#")
```
Ejemplo: Cargar todos los argumentos a una lista y mostrarlos uno por uno
```bash
#cargar todos los argumentos a una lista:
args=("$@")
n=("$#")

for (( i=0 ; i <n; i++ ))
do
    echo "$i --> ${args[$i]}"
done
```
