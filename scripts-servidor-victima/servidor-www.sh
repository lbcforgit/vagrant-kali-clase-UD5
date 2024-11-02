#!/bin/bash
# instalar apache2
apt install -y apache2
# habilitar http y https simultáneamente
a2ensite default-ssl.conf
a2enmod ssl
systemctl restart apache2