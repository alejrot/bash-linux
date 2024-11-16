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


# Montar discos ISO 




## Crear ruta para el ISO

El primer paso es crear la carpeta para el montaje: comando **mkdir** con permisos de administrador.
```bash
sudo mkdir /mnt/iso
```
'/mnt/iso' es una ruta muy habitual para este uso.

## Montar imagen

Se realiza la operacion de montaje en el directorio elegido. Comando **mount**

```bash
sudo mount -o loop <ruta_imagen>.iso /mnt/iso
```
Con ello el contenido de la ISO estará disponible para su uso.

## Desmontar imagen

Cuando la imagen de disco ya no es necesaria es conveniente desmontarla para liberar recursos. Comando **umount**:

```bash
sudo umount /mnt/iso
```








https://tututorial.org/como-montar-y-desmontar-una-imagen-iso-dentro-de-linux-instalar-un-programa/