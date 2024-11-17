
# BASH Scripting

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
echo "<mi texto>"
```

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


Verificar las propiedades de los archivos se puede usar el comando:
```bash
ls -al
```
Dar permisos de ejecución al archivo:
```bash
chmod +x <archivo.sh>
``` 
Ejecutar el archivo:
```bash
./<archivo.sh>
```

Quitar permisos de ejecución al archivo:
```bash
chmod -x <archivo.sh>
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

<!-- 
## Variables
Para **recibir un valor ingresado por el usuario** y guardarlo en una variable se usa el comando **read**:
```bash
read <variable>
```

Y para leerlo en pantalla se llama a la variable con el signo \$ adelante:
```bash
echo "$<variable>"
```
Ejemplo: preguntar la edad de usuario
```bash
echo "¿Tu edad?"
read  age
echo "Tienes $age años"
``` 
-->



<!-- 
### Asignaciones de variables


Si se busca asignarle valor a la variable se usa el signo igual:
```bash
<variable>=<valor>  # NO poner espacios vacios 
```
Ejemplos
```bash
texto="Hola"
indice=1
```
 -->

<!-- 
Hay que tener cuidado de no dejar nunca espacios en blanco alrededor del signo **'\='**. 
-->

<!--
 El valor de una variable se puede copiar a otra usando el operador **'\$'**. 
 -->
<!-- 
```bash
variable_2=$variable_1  # copia de valor
```
Ejemplo:
```bash
texto="Hola mundo" 
variable=$texto
``` -->

<!-- 
Si el valor a guardar procede de un comando hay dos opciones para hacerlo: con paréntesis y con comillas inclinadas.

```bash
encontrados=$(<comando_y_opciones>)     # uso parentesis
encontrados=`<comando_y_opciones>`      # uso comillas inclinadas
```

Ejemplo de uso: asignación de lista de ficheros y directorios
```bash
# ejemplo: listar archivos y directorios
encontrados=$(ls -a) # uso parentesis
encontrados=`ls -a` # uso comillas inclinadas
```
 -->

<!-- 
## Operadores Condicionales

Las condiciones se escriben entre corchetes y con las variables precedidas con el signo \$. Algunos operadores relacionales usados son:

|Operador|Descripcion|
|:---:|:---|
| **lt**| menor que (*lesser than*)    |
| **le**| menor o igual (*less or equal*)  |
| **eq**| igual (*equal*)  |
| **ne**| no igual  (*not equal*)  |
| **ge**| mayor o igual (*greater or equal*)   |
| **gt**| mayor que (*greather than*)  |


Ejemplo uso:

```bash
[ $age -le 21 ]
```
Con esta notación hay que tener cuidado de dejar espacios entre los corchetes y los elementos internos.

Una alternativa es el uso del comando ***test***:

```bash
test $age -ne 21  # uso 'test'
```

Para usar los símbolos de asignación habituales de los lenguajes de programación y no requerir el signo \$ se puede escribir el condicional entre ***dos paréntesis*** :

```bash
((age <= 21))        # doble paréntesis
``` 
-->

<!-- 
## Saltos condicionales

### Condicional 'if'

#### if

```bash
if <condicion>
then 
    <accion>
fi
```
Ejemplo uso - corchetes:

```bash
if [ $age -le 21 ]
then 
    echo "A dormir!"
fi
```
Ejemplo alternativo - *test*:
```bash
if test age <= 21
then 
    echo "A dormir!"
fi
```

Ejemplo alternativo - doble paréntesis:
```bash
if ((age <= 21)) 
then 
    echo "A dormir!"
fi
```

#### if - else
```bash
if [ $age -le 21 ]
then 
    echo "A dormir!"
else 
    echo "Adelante caballero"
fi
```

#### if - elif - else

```bash
if [ $age -le 13 ]
then 
    echo "A dormir,  niñato!"
elif [ $age -le 21 ]
then
    echo "A dormir, mozalbete!"
else 
    echo "Adelante caballero"
fi
```

### Case

```bash
#...
case $valor in
    1)                  ## valor == 1
    echo "Opcion 1"
    ;;                  ## escape ("break")
    2)                  ## valor == 2
    echo "Opcion 2"
    ;;                  ## escape ("break")
    *)                  ## otros valores
    echo "Opcion indeterminada"
    ;;
esac
```
 -->

<!-- 


## Bucles

### While
```bash
#IMPORTANTE: no dejar espacios en blanco al hacer asignaciones
numero=1      
while [ $numero -lt 10 ]
do
    echo  $numero
    numero=$(( numero +1 )) #Incremento
done
```


### For
```bash
#IMPORTANTE: no dejar espacios en blanco al definir el rango
for i in {99..109}
do 
    echo $i
done
```
Caso incremento no unitario:
```bash
for i in {99..109..2}
do 
    echo $i
done
```

```bash
for (( i=0; i < 10; i++  ))
do 
    echo $i
done
```
Ruptura del bucle (break)
```bash
for (( i=0; i < 10; i++  ))
do 
    if [ $i -gt 5 ]
    then
        break
    fi
    echo $i
done
```
 -->


<!-- 
## Operadores Logicos

| Simbolo | Operador |
| ----------- | ----------- |
| &&        | AND   |
| \|\|    |  OR    |


en algunos casos se puede usar:

| -o | OR |
 -->

<!-- 

## Operaciones Aritmeticas

Bash soporta expresiones aritméticas 

Numeros enteros
```bash
suma=$(( x+y ))
resta=$(( x-y ))
miltiplicacion=$(( x*y ))
cociente=$(( x/y ))
resto=$(( x%y ))
```
Las operaciones también pueden hacerse sobre variables, leyendo su valor interno:
```bash
incremento=$(1+$variable)
triple=$(3*$variable)
```

Notación equivalente:
```bash
$(expr $x + $y )
$(expr $x - $y )
$(expr $x \* $y )
$(expr $x / $y )
$(expr $x % $y )
```

**Importante:** Bash **NO** soporta operaciones con numeros flotantes por defecto; sin embargo existen paquetes con comandos adicionales para añadir esta funcionalidad. 
-->


<!-- 
## Comparar Strings

Las cadenas de caracteres se pueden comparar haciendo la conversión de sus valores a texto:

```bash
if [ "$input1" = "$input2" ] 
then
    echo "iguales"
else
    echo "distintas"
fi
```
Una alternativa es colocar el condicional entre dobles comillas (**[[]]**)

```bash
if [[ $input1 = $input2 ]] 
then
    echo "iguales"
else
    echo "distintas"
fi
```


## Editar Strings


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

 -->





## Declare

A las variables se las puede declarar con propiedades específicas mediante el comando *declare*:
```bash
declare <opción> <variable>
```
Ejemplo: variable de solo lectura
```bash
declare -r <variable>=valor
```
ejemplo aplicado:
```bash
declare -r pwdfile=/etc/passwd
``` 



<!-- 


## Arrays

Bash permite crear arrays con numeros y texto. Los valores se rodean entre paréntesis
```bash
<arreglo>=( <elemento1> <elemento2> <elemento3> ...)
```
El primer elemento es el numero 0. Para consultar un elemento:
```bash
${arreglo[indice]}
```
para consultar todos los elementos:
```bash
${arreglo[*]}  
${arreglo[@]}
```
El índice de los elementos se pide con la exclamación (**\!**) adelante del nombre de arreglo
```bash
${!arreglo[*]}
```
en tanto que el conteo de elementos se hace con el numeral (**\#**)
```bash
${#arreglo[*]}
```
El arreglo se puede recorrer con un bucle for facilmente:
```bash
# despliegue del arreglo y lectura de elemento a elemento
for variable in ${arreglo[*]}
do
    echo "$variable"
done
```

Los elementos se pueden eliminar con el comando *unset*:
```bash
unset arreglo[indice]
```
Pueden añadirse nuevos elementos al final:
```bash
arreglo+=(nuevo_elemento)
```
También pueden reemplazarse elementos por simpleasignación:
```bash
arreglo[indice]=valor
``` 
-->


<!-- 
## Funciones

Definir función,sin argumentos:
```bash
function <nombre_funcion>(){
    <rutina>
}
```
Si se necesitan argumentos estos NO se escriben entre los paréntesis sino que se leen de forma numnerada: $1, $2, etc.

```bash
function <nombre_funcion>(){
    <variable_1>=$1
    <variable_2>=$2
    ...
    <rutina>
}
```

LLamar a la función se escribe su nombre, sin paréntesis y con los argumentos necesarios a continuación, separados por espacios:
```bash
<nombre_funcion> <argumento_1> <argumento_1>
```
Las variables internas de las funciones son *globales*, por tanto pueden ser afectadas por rutinas externas. Para evitar problemas las variables se pueden declarar como locales:
```bash
local <variable>
```
 -->





## Check directory

Para revisar si un archivo o carpeta existe se puede usar el comando *test* con las opciones **-d** y **-f**:
```bash
test -f <nombre_fichero>        # verificar archivo
test -d <nombre_directorio>     # verificar carpeta
```


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

## Argumentos entrada

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

## stdin

*stdin* es el "Standard Input" y se encarga de manejar la entrada de datos por teclado. Es el *stream estandar* numero **0**. En Linux y MAC el archivo de stdin se encuentra habitualmente en la ruta: 
```bash
/dev/stdin  
```
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



##  PIPEs - Concatenado de comandos

El pipe  permite **concatenar comandos** separados por el signo **\|**. 
```bash
<primer_comando> | <segundo_comando>
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

## TRUCO: CAMBIAR LA RUTA DEL EJECUTABLE POR:
```bash
#!/usr/bin/env bash
```




## referencias

[tutorial Fazt](https://www.youtube.com/watch?v=H4ayPYcZEfI)
 
[live S4vitar](https://www.youtube.com/watch?v=RUorAzaDftg&list=PLlb2ZjHtNkpjgtjnZjXHQojIrXd4DxRNg&index=1&t=691s)

Desafios: [Over the Wire](https://overthewire.org/wargames/)