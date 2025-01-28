

# Permisos de `sudo`



## Ejecutar con permisos de administrador

```
sudo comando
```

Por defecto `sudo` ejecuta el comando como usuario `root` (id 0) .



## Ejecutar como otro usuario

```
sudo -u nombre_usuario comando
```






## Modificar

Hay dos maneras de configurar los usuarios como `sudo`:



- Modificar el archivo `/etc/sudoers`, 
que es la más riesgosa porque puede inutilizar la funcionalidad de `sudoers` completa 
en caso de de hacerse mal;
- Crear un archivo en la carpeta `/etc/sudoers.d/`. 
Esta es la forma más segura y cómoda porque pueden hacerse múltiples archivos para configurar distintos usuarios, comandos, et. de forma independiente.




## Sintaxis general


Cada opción se registra con la siguiente sintaxis general:

```
nombre_usuarios  nombres_hosts=(usuarios_habilitados)  lista_comandos
```

Los campos que aparecen son los siguientes: 

- `nombre_usuarios` es la lista de nombre de los usuarios que se busca configurar;
- `nombres_hosts` es la lista de equipos (personales, servidores, etc) donde se ejecutarán los comandos;
- `usuarios_habilitados` 
- `lista_comandos` es la lista de rutas a los ejecutables que son configurados, separadas por comas.

!!! info "ALL"

    Es muy habitual usar la palabra `ALL` como comodín cuando hay que agrupar a todos los elementos de la categoría.






## Habilitar usuario


Para habilitar a un usuario particular a ejecutar uno o varios comandos particulares:

```
nombre_usuarios  nombres_hosts=(usuarios_habilitados)  ruta_comando_1, ruta_comando_2, ...
```

en tanto que para deshabilitar a un usuario a ejecutar dichos comandos se los antecede con el signo `!`

```
nombre_usuarios  nombres_hosts=(usuarios_habilitados)  !ruta_comando_1, !ruta_comando_2, ...
```


## Alias

Los alias son elementos auxiliares que sirven para agrupar usuarios, hosts y comandos

```
User_Alias  nombre_alias = usuario_1, usuario_2, ...
Cmnd_Alias  nombre_alias = ruta_comando_1, ruta_comando_2, ...
Host_Alias  nombre_alias = servidor_1, servidor_2, ...
```




## Habilitar uso como sudo sin contraseña



```
ALL ALL=(ALL) NOPASSWD: ruta_comando
```






## Referencias

[GoLinuxCLoud - How to add user to sudoers with best practices & examples](https://www.golinuxcloud.com/add-user-to-sudoers/)


[Linux-Console.net - Sudo: permitir comando sin contraseña](https://es.linux-console.net/?p=10064)