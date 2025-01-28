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

# Variables de shell

Las variables de Bash son elementos que almacenan valores, los cuales pueden ser leidos y también modificados.

Si se crearan procesos derivados del peoceso o *shell* (terminal) actual éstos serían incapaces de tener acceso a estas variables, 
por eso se la suele llamar variables de *shell*.

## Creacion

Las variables en Bash se crean al asignarle un valor con el operador `=`:

```bash
variable=valor
```

Hay que tener cuidado de no dejar nunca espacios en blanco alrededor del signo `=` para permitir la asignación del valor.

Sin embargo, las variables pueden ser creadas sin valor dejando en blanco el miembro derecho de la asignación:

```bash
variable=
```


## Entrada por teclado

Para recibir un valor ingresado por el usuario y guardarlo en una variable se usa el comando `read`:
```bash
read variable
```

## Salida por terminal

Y para leerlo en pantalla se llama a la variable con el signo \$ adelante:
```bash
echo $variable
```

!!! example "Ejemplo: edad de usuario"

    ```bash
    echo "¿Tu edad?"
    read  age
    echo "Tienes $age años"
    ```

## Copia

La copia de valores se hace con ayuda del operador `=`.


### Valor simple

El valor de las variables se lee anteponiendo el operador `$`.
Por ejemplo, para copiar el valor a una nueva variable: 

```bash
nueva_variable=$variable
```

O también:

```bash
nueva_variable=${variable}
```

### Valor predefinido

A las variables se les puede asignar un valor *por defecto* para cuando no estén definidas de antemano:

```bash
nueva_variable=${variable:-valor_defecto}
```

Por ejemplo, si la variable `PI` no está predefinida le podemos asignar una aproximación de 3 dígitos como valor predefinido:

```bash
PI=${PI:-3.14}
echo $PI    # da '3.14'
```
Pero si a la variable se le asigna previamente otro valor no nulo entonces éste será el valor final:

```bash
PI=3.141592
PI=${PI:-3.14}
echo $PI    # ahora da '3.141592'
```

### Valor con error


Esta opción dispara una rutina de error en caso que la variable no tenga valor preasignado.

Ejemplo:

```bash
PI=${PI:? 'Error: variable no inicializada' }
```
en este caso se lanza el mensaje indicado entre comillas.

### Valor alternativo


Esta opción reemplaza el valor de una variable si ésta ya tiene valor:

```bash
PI=3.141592
PI=${PI:+3.14}
echo $PI    # ahora da '3.14'
```
Si la variable de entrada no tiene valor entonces esta asignacion no hace nada:

```bash
PI=
PI=${PI:+3.14}
echo $PI    # (vacío)
```

## Interpolación

La interpolación permite concatenar valores de variables con valores fijos o con valores de otras variables.
Hay dos opciones: la expansión de parámetros y la sustitución de comandos.

### Expansión de parámetros

La expansión de parámetros permite 
agregar contenido a las variables.
Usa las llaves (`{}`) para componer el valor de salida.

En este ejemplo a la variable indicada se le agrega la palabra "Mundo" al final:

```bash
variable="Hola"
echo ${variable}Mundo   # da 'HolaMundo'
```

### Sustitución de comandos

La sustitución de comandos consiste en el reemplazo de un comando por su valor de salida. 
Suelen utilizarse los paréntesis (`()`) para englobar los comandos.


Por ejemplo:
para leer el valor de la fecha actual con el comando `date`
y guardarla en una variable:

```bash 
fecha_hoy=$(date)
```

Una alternativa equivalente es el uso de las comillas inclinadas (\`\`) para rodear los comandos:

```bash 
fecha_hoy=`date`
```

Otro ejemplo es el guardado de los ficheros y subdirectorios encontrados con el comando `ls`:

```bash
encontrados=$(ls -a)    # uso parentesis
encontrados=`ls -a`     # uso comillas inclinadas
```

## Propiedades específicas

A las variables se las puede declarar con propiedades específicas mediante el comando *declare*:
```bash
declare opcion variable
```

Algunas de las opciones disponibles del comando son las siguientes:

|Opción| Significado | Opción inversa |
|:---|:----|:----|
|`-r`| sólo lectura (*read only*) | `+r` |
|`-i`| convierte a enteros (*integer*)| `+i` |
|`-u`| convierte a mayúsculas (*uppercase* )| `+u` |
|`-l`| convierte a minúsculas (*lowercase*) | `+l` |
|`-x`| exportación a procesos hijos| `+x` |
|`-n`| es referencia a otra variable ("apuntador") | `+n` |




<!-- 

Ejemplo: variable de solo lectura

```bash
declare -r variable=valor
```
ejemplo aplicado:
```bash
declare -r pwdfile=/etc/passwd
``` 
 -->


Por ejemplo, para interpretar un `string` como número o incluso como operación aritmética se usa la opción `-i`:

 para forzar 
```bash
declare -i multiplicar="3*2"
``` 
Lo cual es equivalente a:
```bash
multiplicar=$((3*2))
``` 

Las opciones inversas existen para anular las opciones preasignadas a una varible ya creada.


Ejemplo: una variable que contiene sólo texto en mayúsculas (`-u`):

```bash
# opción mayusculas
declare -u hola="hola mundo"
echo $hola      # 'HOLA MUNDO'
```

La opción se quita con su opción opuesta (`+u`):

```bash
declare +u hola="hola mundo"
echo $hola      # 'hola mundo'
```



## Referencias

[Delf Stack - Interpolación de variables en Bash Script](https://www.delftstack.com/es/howto/linux/variable-interpolation-in-bash/)

[Docker Docs - Set, use, and manage variables in a Compose file with interpolation ](https://docs.docker.com/compose/how-tos/environment-variables/variable-interpolation/#interpolation-syntax)



[LinuxSimply - String Interpolation in Bash [4 Methods]](https://linuxsimply.com/bash-scripting-tutorial/string/basics/string-interpolation/)

[PhoenixNAP - Bash declare Statement: Syntax and Examples](https://phoenixnap.com/kb/bash-declare)