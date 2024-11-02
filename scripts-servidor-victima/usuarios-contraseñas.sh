#!/bin/bash
# Nuevos Usuarios
useradd -m -G sudo luisbc -s /usr/bin/bash
useradd -m feldespato -s /usr/bin/bash
useradd -m acacia -s /usr/bin/bash
# Cambio de contraseñas
chpasswd <<<"vagrant:solomillo"
chpasswd <<<"luisbc:asimov"
    # Tienen que crear un diccionario de flores
chpasswd <<<"acacia:rosatulipan"
    # FELDESPATO - más elaborado para que tengan que crear su diccionario - probar el diccionario que me crea
    # nombre feldespato ; apellido smith ; mote slowbyte
    # cumpleaños 13/febrero/1980 ; años 44; mascota perro chucky ; 
    # nacimiento Caracas ; trabajo Endesa
chpasswd <<<"feldespato:Sm17h_13280"