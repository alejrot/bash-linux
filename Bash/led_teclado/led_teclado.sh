#! /bin/bash


carpeta_led=$1
delay=$2

cd $carpeta_led

contenido=`ls`

patron="input" 

tecla="scrolllock"


# Los LEDs se activan periodicamente
while :
do

    for carpeta_interna in ${contenido[*]}
    do

        # detectar y contar coincidencias con el patrón
        condicion_1=`echo $carpeta_interna | grep $patron | wc -l`
        condicion_2=`echo $carpeta_interna | grep $tecla | wc -l`

        if [ $condicion_1 -ge 1 -a $condicion_2 -ge 1 ] 
        then

            ruta_led="$carpeta_led$carpeta_interna/brightness"
            echo $ruta_led

            if test -f $ruta_led
            then
                sudo echo 1 >> $ruta_led
                echo "Archivo de control en $carpeta_interna activado"
            else
                echo "ERROR: no exite el archivo de control en $carpeta_interna"
            fi

        fi

    done

# repeticion cada 1 segundo
sleep $delay;    
done
