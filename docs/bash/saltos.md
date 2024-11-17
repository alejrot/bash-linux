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


# Saltos condicionales

## Condicional 'if'

### if

```bash
if <condicion>
then 
    <accion>
fi
```
Ejemplo uso - corchetes:

```bash
if [ $age -le 21 ]
then 
    echo "A dormir!"
fi
```
Ejemplo alternativo - *test*:
```bash
if test age <= 21
then 
    echo "A dormir!"
fi
```

Ejemplo alternativo - doble paréntesis:
```bash
if ((age <= 21)) 
then 
    echo "A dormir!"
fi
```

### if - else
```bash
if [ $age -le 21 ]
then 
    echo "A dormir!"
else 
    echo "Adelante caballero"
fi
```

### if - elif - else

```bash
if [ $age -le 13 ]
then 
    echo "A dormir,  niñato!"
elif [ $age -le 21 ]
then
    echo "A dormir, mozalbete!"
else 
    echo "Adelante caballero"
fi
```

## Case

```bash
#...
case $valor in
    1)                  ## valor == 1
    echo "Opcion 1"
    ;;                  ## escape ("break")
    2)                  ## valor == 2
    echo "Opcion 2"
    ;;                  ## escape ("break")
    *)                  ## otros valores
    echo "Opcion indeterminada"
    ;;
esac
```

