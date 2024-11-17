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


# Operaciones con *strings*


## Comparar 

Las cadenas de caracteres se pueden comparar haciendo la conversión de sus valores a texto:

```bash
if [ "$input1" = "$input2" ] 
then
    echo "iguales"
else
    echo "distintas"
fi
```
Una alternativa es colocar el condicional entre dobles corchetes:

```bash
if [[ $input1 = $input2 ]] 
then
    echo "iguales"
else
    echo "distintas"
fi
```


## Editar 

### Concatenar Strings

Se leen los valores de los strings y se juntan con comillas:
```bash
resultado="$cadena1 $cadena2"
```

### Rebanado *(slicing)*

El rebanado es la selección de un tramo del string que comienza en el índice de inicio indicado y cuya longitud tiene la cantidad de caracteres pedidos. Si no se indica el numero de caracteres el rebanado llegan hasta el final.

```bash
# desde el indice hasta el final
seleccion=${cadena:indice_inicio}     
# sólo N carateres desde el indice
seleccion=${cadena:indice_inicio:nro_caracteres}
```

**Importante:** el primer elemento es el numero cero.


### Reemplazar palabras

Se indican el valor de la palabra y  de su reemplazo con barras adelante:
 
```bash
cadena_editada=${cadena/$palabra/$reemplazo}     
```

### Borrar secuencias

Se puede borrar la secuencia indicada tras la doble barra (**//**)

```bash
cadena_editada=${cadena//$secuencia}     
```

### Convertir a Minúsculas
```bash
texto=${texto,,}            #todo
texto=${texto,,[AEIOU]}     #solo convierte vocales
```
    
### Convertir a Mayúsculas
```bash
texto=${texto^^}          #todo   
texto=${texto^^[aeiou]}   #solo convierte vocales minusculas
```


### Eliminar hasta encontrar caracter

```bash
cadena_editada="${cadena##*<caracter>}"     
```

Ejemplo: extension y nombre de archivo desde ruta
```bash
ruta="/home/usuario/nombre_archivo.txt"
archivo="${ruta##*/}"       # borrado hasta ultima barra
extension="${ruta##*.}"     # borrado hasta último punto
```

### Eliminar a partir del caracter

```bash
cadena_editada="${cadena%<caracter>*}"     
```

Ejemplo: extension y nombre de archivo desde ruta
```bash
ruta="/home/usuario/nombre_archivo.txt"
ruta_padre="${ruta%/*}"     # borrado desde ultima barra
```


