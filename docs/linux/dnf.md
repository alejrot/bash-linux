# DNF

DNF es el gestor de paquetes usado en Fedora.


## Actualizaciones generales

Actualizar sistema
```bash
sudo dnf update 
sudo dnf upgrade 
```

Borrar caché
```bash
sudo dnf clean all
```

Borrar paquetes huérfanos (usar con cuidado)
```bash
sudo dnf autoremove
```

## Listados

Listar paquetes

```bash
sudo dnf list 
sudo dnf list all
sudo dnf list installed
sudo dnf list available
```

Buscar paquete en repositorios

```bash
sudo dnf search <paquete>
```


Mostrar paquetes con un patrón:

```bash
sudo dnf list *<patron>*
sudo dnf list *<patron>* installed
sudo dnf list *<patron>* available
```








## Manipular paquetes



Instalar paquete:
```bash
sudo dnf install <paquete>
sudo dnf update <paquete>
sudo dnf remove <paquete>
sudo dnf erase <paquete>
```


Reinstalar paquete

```bash
sudo dnf reinstall <paquete>
```

Actualizar a una versión específica

```bash
sudo dnf upgrade-to <paquete_version>
```

Actualizar paquetes a última versión estable

```bash
sudo dnf distro-sync
```






## Proveedores de paquetes

Mostrar repositorios disponibles

```bash
sudo dnf repolist       # habilitados
sudo dnf repolist all   # todos
```

Informacion de proveedores para un paquete

```bash
sudo dnf provides <paquete>
```

Instalar paquete desde repositorio especifico

```bash
sudo dnf install --enablerepo=<repositorio> paquete
```










## Grupos

Listar grupos

```bash
sudo dnf group list
```

Información de grupo

```bash
sudo dnf group info "<nombre grupo>"
```

Instalar grupo

```bash
sudo dnf group install "<nombre_grupo>"
sudo dnf group remove  "<nombre_grupo>"
```

## Paquetes locales

Instalar paquete desde binario

```bash
sudo dnf install ruta_archivo
```




## Historial


Historial de comandos

```bash
sudo dnf history
```






## Ayuda


Ayuda

```bash
dnf help
```


## Referencias


[GeekFlare - DNF intro](https://geekflare.com/es/dnf-intro/)


[Linux Party - 26 comandos de DNF](https://www.linuxparty.es/21-fedora/10040-26-comandos-de-dnf-para-gestion-de-paquetes-rpm-en-fedora-linux)