#!/bin/bash
# instalación del servidor vsftpd
apt install -y vsftpd
# creación de ficheros para descarga desde el atacante
echo "Oh! no me mires!" > /home/vagrant/nomirar.txt
echo "supercalifragilísticoespialidoso" > /home/vagrant/mary.txt