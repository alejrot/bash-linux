

# Crear lanzadores para GNOME


Los lanzadores (accesos directos) de GNOME van en el directorio:
```bash
/usr/share/applications/
```
El archivo del lanzador debe tener la **extensión .desktop**. En él debe guardarse el siguiente contenido:



```bash
[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=<nombre>
Comment=<Descripción del programa>
Exec=<ruta_script>
Icon=<ruta_icono>
Terminal=false
```











https://hotsechu.wordpress.com/2020/11/19/anadir-un-lanzador-de-aplicacion-en-gnome/



https://linutopia.com/como-hacer-que-un-icono-este-integrado-en-un-archivo-ejecutable-de-linux/