

# echo $1
# echo $2


# if [ 4  -ge 1 -a 7 -ge 1 ] 
# then
#     echo True

# else
#     echo False

# fi


# #Defining a variable
# var=$1
# # var=""
# echo $var
# #Checking if a string is not empty
# if [ -n "$var" ] 
# then
#     echo "The string 'var' is not empty."
# fi


# if ! [ -n "$var" ] 
# then
#     echo "The string 'var' IS empty."
# fi
archivo=$1




echo "Archivo: $archivo"


if ! [ -n "$archivo" ] 
then
    echo "Archivo de entrada no especificado"
fi


if [ -f "$archivo" ] 
then
    echo "El archivo '$archivo' exite:"
fi





if [ -r "$archivo" ] 
then
    echo " - tiene permisos de lectura "
fi

if [ -w "$archivo" ] 
then
    echo " - tiene permisos de escritura"
fi

if [ -x "$archivo" ] 
then
    echo " - tiene permisos de ejecucion "
fi


