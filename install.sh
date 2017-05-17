#!/bin/bash
vagrant_installer='/tmp/vagrant_1.9.5_x86_64.deb'
packer_installer='/tmp/packer.zip'
#echo $vagrant_installer
sudo apt-get update
sudo apt-get install unzip virtualbox
wget -O $packer_installer https://releases.hashicorp.com/packer/1.0.0/packer_1.0.0_linux_amd64.zip
unzip $packer_installer -d /tmp/
packer_installer='/tmp/packer'
sudo cp $packer_installer /usr/local/bin/
wget -O $vagrant_installer https://releases.hashicorp.com/vagrant/1.9.5/vagrant_1.9.5_x86_64.deb
sudo dpkg -i $vagrant_installer
sudo vagrant plugin install vagrant-reload

