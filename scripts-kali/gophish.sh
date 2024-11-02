#!/bin/bash
# Intérprete GoLang
apt install -y golang-go
# Instalamos el servidor de correo para enviar el phishing
go install github.com/mailhog/MailHog@latest
# Instalamos GoPhish
git clone https://github.com/gophish/gophish.git 
cd gophish
go build
echo 'alias gophish="/home/vagrant/Apps/gophish/gophish" ' >> "/home/vagrant/.zshrc

