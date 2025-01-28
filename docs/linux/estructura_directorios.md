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
# - Debian
# - Arch
# - Fedora
---


# Estructura de directorios en Linux

## Introducción

La mayoría de las distribuciones GNU/Linux
tienen un reparto de sus directorios parecido.



``` title="Estructura - Fedora"
/
├── afs
├── bin -> usr/bin
├── boot
├── dev
├── etc
├── home
├── lib -> usr/lib
├── lib64 -> usr/lib64
├── lost+found
├── media
├── mnt
├── opt
├── proc
├── root
├── run
├── sbin -> usr/sbin
├── srv
├── sys
├── tmp
├── usr
└── var
```



## Ejecutables

- `/bin` 
    Binarios.
    Comandos para todos los usuarios:
    `ls`, `cp`, `mv` , etc.

- `/sbin`

    Binarios.
    Reservado para tareas administrativas.


- `/opt`

    Software adicional o de terceros instalado manualmente. 
    Es ideal para programas que no forman parte del sistema base.


- `/lib` y `/lib64`

    Bibliotecas compartidas esenciales para los 
    binarios en `/bin` y `/sbin`. 

- `/usr`

    Contiene aplicaciones y utilidades para usuarios. 
    

    - `/usr/bin`:
    Archivos binarios. 
    
    - `/usr/lib`:
    Bibliotecas. 



## Arranque

- `/boot`

    Archivos para el arranque del sistema. 
    Incluye l kernel y las configuraciones del gestor de arranque.



## Hardware

- `/dev`

    Representa los dispositivos de hardware del sistema, como discos duros, terminales y puertos USB. 
    Cada dispositivo tiene un archivo asociado en este directorio.


    - `dev/shm`
    Memoria RAM accesible. Puede usarse como un un directorio cualquiera.

## Configuración

- `/etc`

    Archivos de configuración del sistema 
    y de las aplicaciones instaladas.


## Directorios personal

- `/home`

    Directorios personales de los usuarios,
    con sus archivos y configuraciones.


## Montajes 

- `/mnt` y `/media`
    
    Ambas carpetas están relacionadas con el montaje de sistemas de archivos. 

    - `/mnt`:
    Montaje de discos.

    - `/media`:
    Montaje de dispositivos externos: discos ópticos, USB's, etc. 


## Procesos y sistema operativo

- `/proc` y `/sys`

    Ambos son sistemas de archivos virtuales que proporcionan información sobre el kernel y el hardware. 

    - `/proc`:
        muestra a todos los procesos del sistema
        como archivos.

    - `/sys`:
        muestra las configuraciones del hardware y del kernel.




## Archivos temporales

- `/tmp`:

    Archivos temporales que se eliminan habitualmente tras el reinicio.


-  `/var`:

    Datos auxiliares con mayor persistencia:
    - registros del sistema (logs);
    - colas de impresión;
    - archivos temporales persistentes.



## `/run`


?????

## Referencias

[SoplosLinux - Sistema de archivos en Linux](https://soploslinux.com/sistema-de-archivos-en-linux-tipos-y-gestion-eficiente/)