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






# Bucles

## While
```bash
#IMPORTANTE: no dejar espacios en blanco al hacer asignaciones
numero=1      
while [ $numero -lt 10 ]
do
    echo  $numero
    numero=$(( numero +1 )) #Incremento
done
```


## For
```bash
#IMPORTANTE: no dejar espacios en blanco al definir el rango
for i in {99..109}
do 
    echo $i
done
```
Caso incremento no unitario:
```bash
for i in {99..109..2}
do 
    echo $i
done
```

```bash
for (( i=0; i < 10; i++  ))
do 
    echo $i
done
```
Ruptura del bucle (break)
```bash
for (( i=0; i < 10; i++  ))
do 
    if [ $i -gt 5 ]
    then
        break
    fi
    echo $i
done
```

