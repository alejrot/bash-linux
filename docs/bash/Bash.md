<!-- 

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
 -->

<!-- 
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
 -->


<!-- 
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
-->


<!-- 
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
-->

<!-- 
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
-->

<!-- 
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
-->
<!-- 

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
-->






<!-- 
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
-->
<!-- 
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

 -->


## TRUCO: CAMBIAR LA RUTA DEL EJECUTABLE POR:
```bash
#!/usr/bin/env bash
```




## referencias

[tutorial Fazt](https://www.youtube.com/watch?v=H4ayPYcZEfI)
 
[live S4vitar](https://www.youtube.com/watch?v=RUorAzaDftg&list=PLlb2ZjHtNkpjgtjnZjXHQojIrXd4DxRNg&index=1&t=691s)

Desafios: [Over the Wire](https://overthewire.org/wargames/)