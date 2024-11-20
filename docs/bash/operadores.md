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







## Operadores relacionales

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





!!! tip "TIP: ver resultado de operadores relacionales"

    El resultado se puede comprobar agregando la secuencia:

    ```bash
    ((age <= 21))  && echo "true" || echo "false"
    ```

    ```bash
    test $age -le 21 && echo "true" || echo "false"
    ```

    Los operadores relacionales dan  el valor `0` cuando la condición se cumple 
    y `1` cuando no.

    ```bash
    age=35
    test $age -le 21 && echo $? || echo $?      # '1'
    ```
    ```bash
    age=8
    test $age -le 21 && echo $? || echo $?      # '0'
    ```






## Referencias:

[Linux Handbook - Using test Command in Bash Scripts](https://linuxhandbook.com/bash-test-command/)