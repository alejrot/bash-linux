#! /usr/bin/bash

# texto="Hola mundo" 
# variable=$texto
# echo "$variable"

# # ejemplo: listar archivos y directorios

# retorno=$(ls -a) # uso parentesis
# retorno=`ls -a` # uso comillas inclinadas


# echo "$retorno"


# age=21
# retorno=`test $age -ne 21`
# if retorno
# # if test $age -ne 21
# # if [ $age -ne 21 ]
# then
#     echo "$age"
# else 
#     echo "Son iguales"
# fi

# arreglo=(4 "hola" 27)
# echo "${arreglo[*]}"

# arreglo+=(89)
# arreglo+=("chau")
# echo "${arreglo[*]}"



# input1="hola"
# input2="hola 2"

# # if [ "$input1" == "$input2" ]  #bien
# if [[ $input1 = $input2 ]]    # bien
# # if [ $input1 = $input2 ]    # bien
# # if (( "$input1" = "$input2" ))
# then
#     echo "iguales"
# else
#     echo "distintas"
# fi

# # archivo="Bash.md "
# # # if [ -f $archivo ]
# # if test -f $archivo 
# # then
# #     echo "$archivo existe"
# # fi

cadena="yo soy el ombligo del mundo xd"


# # seleccionar tramo entre indices
# echo ${cadena:3}

# cadena="Simona"
# echo ${cadena:2}

# borrar tramo de texto

# secuencia="el"
# reemplazo="la"

# # sustituir texto
# echo ${cadena/$palabra/$reemplazo}

# #borrar secuencias especificas
# echo ${cadena//"el"}




ruta="/home/usuario/nombre_archivo.txt"
archivo="${ruta##*/}"  
extension="${ruta##*.}"  

echo "$archivo"
echo "$extension"

ruta_padre="${ruta%/*}"  
echo "$ruta_padre"


# lista=`ls`
# echo $lista

# conteo=`wc "$lista"`
# echo $conteo


# todo=`ls | wc -l`
# echo "$todo"



