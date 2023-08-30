# Actividad No. 4 - Servicios Systemd Unit

## Crear el script
Crea el codigo y el archivo para el script. Ejemplo del codigo **(script.sh)**:

    #!/bin/bash
    echo "Hola, te saluda Ronaldo Posadas desde un script :D"
    echo "Fecha: $(date)"

## Crear el archivo de unidad en systemd
Crear un archivo de unidad de systemd para el servicio. Abrir una terminal y ejecutar el siguiente codigo:

    sudo nano /etc/systemd/system/saludo.service

Dentro de este archivo se debe agregar el siguiente codigo:

    [Unit]
    Description=Saludo y fecha actual service
    After=network.target

    [Service]
    Type=simple
    ExecStart="/SO1_ACTIVIDADES_202004770/Actividad 4/script.sh"

    [Install]
    WantedBy=multi-user.target

## Habilitar y ejecutar el servicio
Creado el archivo de unidad en systemd, ejecutar los siguientes comandos para habilitar y ejecutar el servicio:

    sudo systemctl daemon-reload
    sudo systemctl enable saludo.service
    sudo systemctl start saludo.service

## Verificar el estado del servicio
Para verificar el estado del servicio usar el siguiente comando:

    sudo systemctl status saludo.service

## Detener el servicio
Para detener el servicio usar el siguiente comando:

    sudo systemctl stop saludo.service

## Deshabilitar el servicio
Para deshabilitar el servicio usar el siguiente comando:

    sudo systemctl disable saludo.service

## Eliminar el servicio
Para eliminar el servicio usar el siguiente comando:

    sudo rm /etc/systemd/system/saludo.service

