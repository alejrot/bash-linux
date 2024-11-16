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


# PATH y Ejecutables

## Buscar ejecutable



Los archivos ejecutables pueden ser buscados fácilmente con el comando **which**:
```bash
which <nombre_ejecutable>
```


Por ejemplo, si se busca el programa VSCodium:

```bash
which codium
```

Este comando puede buscar varios ejecutables al mismo tiempo:

```bash
which python mysql
```

Para listar todas las ubicaciones de un mismo ejecutable usar la opción **-a**

```bash
which -a python 
```


**Importante:** **which** busca siempre a los ejecutables en las rutas configuradas dentro de la **variable $PATH** (variable de entorno del sistema operativo).  Si el ejecutable no está en un directorio registrado en $PATH éste no aparecerá.



## Añadir a PATH
Si se necesita añadir un directorio a la variable PATH , por ejemplo si se necesita ejecutar un programa guardado en una carpeta no habital, este se añade 
```bash
export PATH=$PATH:/<ruta_directorio>
```





https://professor-falken.com/linux/como-localizar-un-archivo-ejecutable-con-un-simple-comando-en-linux/

https://www.sysadmit.com/2016/06/linux-anadir-ruta-al-path.html