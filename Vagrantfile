# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Kali Atacante ---------------------------------------------------
  config.vm.define "kali-sad" do |kali|
    # Box
    kali.vm.box = "kalilinux/rolling"
    # RED
    kali.vm.network "private_network", ip: "192.168.33.63"
    # Documentos compartidos
    kali.vm.synced_folder "./ficheros-compartidos", "/home/vagrant/ficheros-compartidos"
    # Disable the default share of the current code directory. 
    kali.vm.synced_folder ".", "/vagrant", disabled: true
    # VIRTUALBOX
    kali.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.name = "Kali-SAD-ataques-LuisBC"
      vb.memory = "2048"
      vb.customize ["modifyvm", :id, "--groups", "/escenario-ataques-SAD"]
    end  
    # VMWARE
    kali.vm.provider "vmware_fusion" do |vm|
      vm.gui = true
      vm.linked_clone = false
      vm.vmx["displayname"] = "kali-SAD-LuisBC"
      #vm.vmx["memsize"] = "2048"
      #vm.vmx["numvcpus"] = "2"
    end
    # provisioning
    kali.vm.provision "shell", inline: <<-SHELL
      apt-get update
    SHELL
    # Aplicaciones generales
    kali.vm.provision "shell", path: "./scripts-kali/apps-generales.sh" 
    # Aplicaciones hacking
    kali.vm.provision "shell", path: "./scripts-kali/apps-ataques-contraseña.sh"
  end

  # METASPLOITABLE -----------------------------------------
  config.vm.define "metasploitable3" do |ms3|
    # Box
    ms3.vm.box = "rapid7/metasploitable3-win2k8"
    ms3.vm.box_version = "0.1.0-weekly"
    # RED
    ms3.vm.network "private_network", ip: "192.168.33.100"
    # Disable the default share of the current code directory. 
    ms3.vm.synced_folder ".", "/vagrant", disabled: true
    # VIRTUALBOX
    ms3.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.name = "metasploitable3-win2k8-SAD"
      #vb.memory = "1024"
      vb.customize ["modifyvm", :id, "--groups", "/escenario-ataques-SAD"]
    end  
    # VMWARE
    ms3.vm.provider "vmware_fusion" do |vm|
      vm.gui = true
      vm.linked_clone = false
      vm.vmx["displayname"] = "metasploitable3-win2k8-SAD"
      #vm.vmx["memsize"] = "2048"
      #vm.vmx["numvcpus"] = "2"
    end
  end

  # SERVIDOR PARA OTROS ATAQUES PERSONALIZADO --------------
  config.vm.define "servidor-victima" do |sv|
   # Box
    sv.vm.box = "bento/ubuntu-24.04"
    # RED
    sv.vm.network "private_network", ip: "192.168.33.34"
    # Disable the default share of the current code directory. 
    sv.vm.synced_folder ".", "/vagrant", disabled: true
    # VIRTUALBOX
    sv.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.name = "Servidor-Victima-SAD-LuisBC"
      
      vb.cpus = 2
      vb.memory = "2048"
      vb.customize ["modifyvm", :id, "--groups", "/escenario-ataques-SAD"]

    end  
    # VMWARE
    sv.vm.provider "vmware_fusion" do |vm|
      vm.gui = true
      vm.linked_clone = false
      vm.vmx["displayname"] = "Servidor-Victima-SAD-LuisBC"
      vm.vmx["memsize"] = "2048"
      vm.vmx["numvcpus"] = "2"
    end
    # provisioning
    sv.vm.provision "shell", inline: <<-SHELL
      apt-get update
    SHELL
    # Servicios
    sv.vm.provision "shell", path: "./scripts-servidor-victima/servidor-www.sh" 
    sv.vm.provision "shell", path: "./scripts-servidor-victima/servidor-ftp.sh" 
    # Usuarios para ataque a contraseña
    sv.vm.provision "shell", path: "./scripts-servidor-victima/usuarios-contraseñas.sh" 

  end

  # Kali Víctima  ---------------------------------------------------
  config.vm.define "kali-victima-sad" do |kaliv|
    # Box
    kaliv.vm.box = "kalilinux/rolling"
    # RED
    kaliv.vm.network "private_network", ip: "192.168.33.15"
    # Disable the default share of the current code directory. 
    kaliv.vm.synced_folder ".", "/vagrant", disabled: true
    # VIRTUALBOX
    kaliv.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.name = "Kali-SAD-victima-LuisBC"
      vb.memory = "2048"
      vb.customize ["modifyvm", :id, "--groups", "/escenario-ataques-SAD"]
    end  
    # VMWARE
    kaliv.vm.provider "vmware_fusion" do |vm|
      vm.gui = true
      vm.linked_clone = false
      vm.vmx["displayname"] = "kali-SAD-victima-LuisBC"
      #vm.vmx["memsize"] = "2048"
      #vm.vmx["numvcpus"] = "2"
    end
    # provisioning
    #kaliv.vm.provision "shell", inline: <<-SHELL
     # apt-get update
    #SHELL

  end

end
