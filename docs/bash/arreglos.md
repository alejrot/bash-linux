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





# Arrays

Bash permite crear arrays con números y texto. 

## Creación

Los valores se rodean entre paréntesis:
```bash
arreglo=( elemento_1  elemento_2  elemento_3 )
```


## Consulta

Para consultar un elemento particular en base a su índice se usan los corchetes:
```bash
${arreglo[indice]}
```
El primer elemento es el numero `0`. 

Para consultar todos los elementos del arreglo se usa como comodiín el asterisco (`*`) y el arroba (`@`):

```bash
${arreglo[*]}  
${arreglo[@]}
```

## Índices y conteo

El índice de todos los elementos se pide con la exclamación (`!`) adelante del nombre de arreglo:

```bash
${!arreglo[*]}
```

en tanto que el conteo de elementos se hace con el numeral (`#`) precediendo el nombre:

```bash
${#arreglo[*]}
```

## Recorrido de arreglos


El arreglo se puede recorrer con un bucle `for` facilmente:
```bash
# despliegue del arreglo y lectura de elemento a elemento
for variable in ${arreglo[*]}
do
    echo "$variable"
done
```

## Edición de arreglos

Pueden añadirse nuevos elementos al final:
```bash
arreglo+=(nuevo_elemento)
```
También pueden insertarse elementos en lugares específicos:
```bash
arreglo[indice]=valor
```

La sustitución de elementos se consigue con ayuda del comando `declare`:

```bash
declare arreglo[indice]=valor
```

Los elementos se pueden eliminar con el comando `unset`:
```bash
unset arreglo[indice]
```


## Conversión a arreglo

Las variables de otros tipos se pueden convertir a *array*
usando el comando `declare` con la opción `-a`

```bash
declare -a variable
```
