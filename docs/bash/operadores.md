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


# Operadores




## Operaciones Aritmeticas

Bash soporta expresiones aritméticas 

Numeros enteros
```bash
suma=$(( x+y ))
resta=$(( x-y ))
miltiplicacion=$(( x*y ))
cociente=$(( x/y ))
resto=$(( x%y ))
```
Las operaciones también pueden hacerse sobre variables, leyendo su valor interno:
```bash
incremento=$(1+$variable)
triple=$(3*$variable)
```

Notación equivalente:
```bash
$(expr $x + $y )
$(expr $x - $y )
$(expr $x \* $y )
$(expr $x / $y )
$(expr $x % $y )
```

!!! note "Números flotantes" 
    Bash **NO** soporta operaciones con numeros flotantes por defecto; sin embargo existen paquetes con comandos adicionales para añadir esta funcionalidad.







## Operadores Condicionales

Las condiciones se escriben entre corchetes y con las variables precedidas con el signo `$`. 
Algunos operadores relacionales usados son:

|Operador|Descripcion|
|:---:|:---|
| `lt`| menor que (*lesser than*)    |
| `le`| menor o igual (*less or equal*)  |
| `eq`| igual (*equal*)  |
| `ne`| no igual  (*not equal*)  |
| `ge`| mayor o igual (*greater or equal*)   |
| `gt`| mayor que (*greather than*)  |


Ejemplo uso:

```bash
[ $age -le 21 ]
```
Con esta notación hay que tener cuidado de dejar espacios entre los corchetes y los elementos internos.

Una alternativa es el uso del comando ***test***:

```bash
test $age -ne 21  # uso 'test'
```

Para usar los símbolos de asignación habituales de los lenguajes de programación y no requerir el signo `$` se puede escribir el condicional entre doble paréntesis:

```bash
((age <= 21))        # doble paréntesis
```









## Operadores Logicos

| Simbolo | Operador |
| ----------- | ----------- |
| `&&`       | AND   |
| `||`    |  OR    |


en algunos casos se puede usar:

| `-o` | OR |








