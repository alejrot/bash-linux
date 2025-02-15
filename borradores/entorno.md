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

# Variables de entorno


## introducción

Las variables de entorno,
también llamadas variables de exportación,
son variables que se transfieren de la *shell* 
que las define 
a sus *shells* derivadas.
En terminos más estrictos, 
el proceso invocado por el sistema operativo y sus procesos hijos tendrán acceso a dichas variables gracias al sistema operativo.
Esto contrasta con las variables comunes,
con las cuales el acceso a la variable
es reducida a la terminal (y su proceso) que la crea.


## Consulta


Las variables de entorno ya existentes 
se consultan con los comandos `env` y `printenv`:


```bash
env
printenv
```




## Creación

Las variables se definen y exportan 
con ayuda de la cláusula `export`:

```bash
export NOMBRE_VARIABLE=valor
```

Los nombres de las variables de entorno
se escriben en mayúsculas por convención.



## Borrado

La cláusula `unset` permite borrar la variable de entorno:

```bash
unset NOMBRE_VARIABLE
```

## Archivos 


Variables del sistema

- `/etc/profile`
- `/etc/bash/bashrc` 

Variables de usuario:
 
- `.bash_profile`  
- `.bashrc`
- `.bash_login` 
- `.profile`



## Referencias

[Linux-Console.net - ¿Qué son las variables de entorno en Linux? Todo lo que necesitas saber](https://es.linux-console.net/?p=13009)

[Linux-Console.net - Cómo configurar y desarmar variables de entorno locales, de usuario y de todo el sistema en Linux](https://es.linux-console.net/?p=1284)


https://es.linux-console.net/?p=8274



[DigitalOcean - Cómo leer y configurar variables de entorno y de shell en Linux](https://www.digitalocean.com/community/tutorials/how-to-read-and-set-environmental-and-shell-variables-on-linux-es#como-funcionan-el-entorno-y-las-variables-de-entorno)


https://www.delftstack.com/es/howto/linux/bash-variable-scope/