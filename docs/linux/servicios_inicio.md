
# Agregar servicios al inicio

## Systemd



### Crear archivo de servicio


```
[Unit]
Description=Script service
After=network.target network-online.target
Wants=network-online.target

[Service]
ExecStart=/home/x/Codigos/led_teclado.sh 

[Install]
WantedBy=multi-user.target
```

### Copiar archivo
```bash
sudo cp leds_teclado.service  /etc/systemd/system/leds_teclado.service
```

### Hablilitar
```bash
sudo systemctl enable leds_teclado
```

### Ejecucion manual

```bash
sudo systemctl start leds_teclado
```


### Estado actual

```bash
systemctl status leds_teclado
```






[ComputerWage- Scripting en Linux (V): Bash. Ejecutar un Script en el Inicio o Apagado](https://computernewage.com/2019/03/09/scripting-linux-bash-ejecutar-script-arranque/)