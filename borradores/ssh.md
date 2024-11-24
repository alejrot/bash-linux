

# Secure Shell (SSH)

>


## Instalar servicio

viene preinstalado por defecto en la mayoría de distribuciones GNU/Linux

arranque en SystemD:

```bash
systemctl enable ssh
```

En Windows se puede usar PuTTY: [pagina de PuTTY](https://www.putty.org)

## Uso básico

Conexión a servidor remoto:


```bash
ssh nombre_usuario@direccion_ip_servidor
```

Si es la primera vez se propone agregar el destino a la *fingerprint* para así advertir de posibles cambios de llave.

Luego se coloca la contraseña del usuario.



## crear certificado

El certificado local es una alternativa a la escritura de contraseña cada vez que se requiera conexión con el servidor remoto.


Una vez iniciada la sesión crear el certificado con `ssh-keygen`:

```bash
ssh-keygen
```

El comando devolverá:
- una clave privada guardada en `nombre_usuario/.ssh/id_rsa`
- una clave pública guardada en `nombre_usuario/.ssh/id_rsa.pub`
- una huella de clave, por ejemplo un hash SHA256
- una imagen aleatoria de la llave (un gráfico ASCII)

!!! CRITICAL 
    NUNCA COMPARTIR LA CLAVE PRIVADA


## copia manual

La clave pública se copia al servidor de destino:


```bash
cat .ssh/id_rsa.pub # copia de clave publica
vim .ssh/authorized_keys
# (pegar clave)
```


## copiar usuario

Iniciar la sesión remota y usar el comando `ssh-copy-id`:

```bash
ssh-copy-id nombre_usuario@direccion_ip_servidor:
```
prestar atencion al uso de dos puntos (`:`) al final.


## ejecutar comandos

```bash
ssh -t nombre_usuario@direccion_ip_servidor  comando
```

ejemplO: `irssi`
```bash
ssh -t nombre_usuario@direccion_ip_servidor  irssi
```


## proxy SSH

Crear proxy SOCKS en servidor remoto:

```bash
ssh -D  numero_puerto  nombre_usuario@direccion_ip_servidor  
```

Luego configurar el navegador o conexion local para conectarse al server remoto por el puerto elegido.

El server actuará como intermediario mientras la conexión entre éste y el cliente se mantiene protegida ante terceros. 
La IP vista desde afuera será la del servidor.


## servidor X

Abrir aplicaciones del servidor con interfaz gráfica desde cliente remoto:

```bash
ssh -X  nombre_usuario@direccion_ip_servidor  
```

(En MAC y Windows se requiere instalar un servidor X, como por ejemplo XQuarz)


## sortear Firewall

Supóngase que se necesita acceder a un servidor 
cuyo acceso remoto está bloqueado por un firewall 
pero que tiene conexión con el servidor al que sí se tiene acceso.

Configurar conexión:

```bash
ssh -L  puerto_cliente:ip_server_2:puerto_server_2  nombre_usuario@direccion_ip_server_1  
```

De esta forma el servidor intermediario nos dará acceso al servidor protegido.

La comunicación se abre ahora desde nuestra IP local por el puerto elegido:

```bash
ssh -p  puerto_cliente  nombre_usuario@localhost
```

### tunel SSH reverso

En este caso es un usuario del servidor remoto bloqueado por firewall quien abre una conexión con un servidor intermedio que nos permita entrar.

Este usuario crea su conexión con:

```bash
ssh -R  puerto_cliente:localhost:puerto_server_2  nombre_usuario@direccion_ip_server_1  
```

y el cliente ahora podrá entrar con:

```bash
ssh -p  puerto_cliente  nombre_usuario@localhost
```


## Referencias


[Pelado Nerd - Aprendiendo SSH en 8 minutos (parte 1)](https://www.youtube.com/watch?v=RMS5zBYQIqA)

[Pelado Nerd - Aprendiendo SSH - Parte 2 / Comandos AVANZADOS!)](https://youtu.be/IDDmqlN-hF0)




[NullSafe Architect - Acceso seguro a servidores mediante SSH | Super Mega Ultra Hiper TUTORIAL](https://www.youtube.com/watch?v=dx2XKJ_cDg4)