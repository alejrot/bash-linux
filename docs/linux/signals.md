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
# - Bash
- Linux
- GNU
- Debian
- Arch
- Fedora
---


# Señales



Las señales son una forma de comunicar procesos del sistema operativo.
Muchas de las señales tienen como funcionalidad predeterminada el cierre del proceso receptor.



## Señales predefinidas

Con la opción `-l` del comando `trap` se puede consultar el nombre clave de las señales y su número equivalente:

```bash
trap -l
```

En Linux hay 62 señales predefinidas.


## Envío de señales


Las señales se envían a un proceso destino en base a su número identificador o **PID** con ayuda del comando `kill`:


```bash
kill -NOMBRE_SENIAL  pid_destino
kill -NUMERO_SENIAL  pid_destino
```

Por ejemplo, si se desea enviar la señal `SIGUSR1` (señal Nº 10) a un proceso específico puede hacer:

```bash
kill -SIGUSR1  pid_destino
kill -10       pid_destino
```

Si no se indica el nombre ni el número de señal deseada entonces se envía la señal `SIGKILL`, 
que es la que le da nombre al comando.



!!! info "PID actual"

    El PID de la actual rutina se guarda en la variable de entorno `$`.
    Su valor se consulta colocando otro signo `$` adelante, como con cualquier variable.
    
    ```bash
    mi_pid=$$
    echo $mi_pid
    ```
    ```bash
    echo $$
    ```


!!! tip "TIP: consultar PID de proceso"

    El comando `pgrep` ayuda a encontrar el número de PID de un proceso o rutina en ejecución en base a su nombre completo o parcial. 
    Este número se puede guardar en una variable:

    ```bash
    pid=`pgrep parte_nombre_proceso`
    ```
    y pasarlo al comando `kill` como argumento:

    ```bash
    kill -NOMBRE_SENIAL $pid
    ```

    Si hay varias coincidencias `pgrep`  devuelve varios números de PID al mismo tiempo.



## Capturar señales


El comando `trap` sirve también para consultar y configurar la captura de distintas señales.
Esto permite cambiar el comportamiento de las rutinas al recibir una señal específica.

La asignación de una rutina a ejecutarse ante una señal:

```bash
trap 'instruccion_1; intruccion_2; intruccion_3' NOMBRE_SENIAL
```
La rutina deseada se asigna entre comillas simples o dobles.


Consultar todas las capturas:

```bash
trap
```

Consultar la captura de una señal específica: opción `-p`

```bash
trap -p NOMBRE_SENIAL
```

Reestablecer el comportamiento de una señal: opcion `-` (vacío)

```bash
trap - NOMBRE_SENIAL
```


!!! example "SIGUSR2"

    En este ejemplo configura un mensaje 
    para ser mostrado por la terminal
    al recibir la señal `SIGUSR2`:

    ```bash
    # rutina: mostrar mensaje en pantalla
    trap 'echo "señal SIGUSR2 recibida"' SIGUSR2
    ```
    El cual puede dispararse desde la misma terminal:

    ```bash
    # test
    kill -SIGUSR2 $$
    ```

    En este otro ejemplo la terminal esperará 5 segundos antes de cerrarse:

    ```bash
    # rutina: mostrar mensaje en pantalla y cerrar
    trap 'echo "señal SIGUSR2 recibida"; echo "cerrando..."; sleep 5; exit' SIGUSR2
    ```



!!! danger "SIGKILL"

    Esta señal es la única que no puede ser reconfigurada y que obliga al cierre del proceso receptor y sus procesos hijos.



## Manejadores (*handlers*)


En el caso de usar *scripts* las instrucciones para captura de señales 
debe agregarse lo más cerca posible del inicio de código 
para asegurar que la correcta configuración.

Las rutinas pueden englobarse en *handlers* (funciones manejadoras)

```bash
trap handler_senial_1 NOMBRE_SENIAL_1
trap handler_senial_2 NOMBRE_SENIAL_2 
```

y éstos manejadores pueden a su vez afectar a múltiples señales al mismo tiempo:

```bash
trap handler_senial NOMBRE_SENIAL_1 NOMBRE_SENIAL_2 NOMBRE_SENIAL_3
```

Los handlers se definen con la sintaxis:

```bash
handler_senial()
{
    # rutina
    echo "Señal recibida"
}
```

Es posible definir los handlers de manera que puedan operar con variables del programa. 
Para ello se definen con la cláusula `function`. 
Por ejemplo, para hacer un manejador que cuente


```bash
function handler_senial() {
    ((++contador))
    echo -e "Señal recibida $contador veces"
    
}
```

o también se puede hacer:

```bash
function handler_senial() {
    echo "Señal recibida $((++contador)) veces "
}
```


!!! example "Autoincremental"

    ```bash
    #! /bin/bash

    trap handler_usuario SIGUSR1 SIGUSR2

    function handler_usuario(){
        ((++contador))
        echo "Señales recibidas $contador veces."
    }

    echo "PID actual:"
    echo $$

    contador=0

    # autoenvio de señales
    while true
    do 
        kill -SIGUSR1 $$
        sleep 1
    done
    ```





## Referencias


[Linux-Console.net - Cómo usar señales de Linux en scripts Bash](https://es.linux-console.net/?p=8433)



[Linux-Console.net - Cómo usar SIGINT y otras señales de terminación en Linux](https://es.linux-console.net/?p=19707)
