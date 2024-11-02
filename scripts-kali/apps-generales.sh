#!/bin/bash

#Descompresión de ficheros
apt install unzip -y

#Visualización de direstorios
apt install tree -y

#HTTP
apt install curl -y

#Edición de imágenes GIMP
#apt install flatpak -y
#flatpak install -y https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
#echo "alias gimp='flatpak run org.gimp.GIMP'" >> /home/vagrant/.zshrc
#echo "GIMP -> ejecutar por terminal 'gimp'" >> /home/vagrant/Desktop/GIMP-help


#Ayuda (da fallo en vagrant up)
apt install tldr -y
#    runuser -l vagrant -c "mkdir -p /home/vagrant/.local/share/tldr"
#    runuser -l vagrant -c "tldr -u"

#Contraseñas
apt install keepassxc-full -y