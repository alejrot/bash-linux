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



# Funciones

## Definición

La función se define con la cláusula `function`:

```bash
function nombre_funcion(){
    rutina
}
```
Si se necesitan argumentos estos **no** se escriben entre los paréntesis sino que se leen de forma numnerada: $1, $2, etc.

```bash
function nombre_funcion(){
    variable_1=$1
    variable_2=$2
    ...
    rutina
}
```


## Llamado

LLamar a la función se escribe su nombre, sin paréntesis y con los argumentos necesarios a continuación, separados por espacios:

```bash
nombre_funcion  argumento_1  argumento_2
```


## Variables locales

Las variables internas de las funciones son *globales*, por tanto pueden ser afectadas por rutinas externas. 
Para evitar problemas las variables se pueden declarar como locales:

```bash
local variable
```

