#/bin/bash

sudo cp /vagrant/keys/* /home/vagrant/.ssh/
sudo cp -r /vagrant/prelim-exam /home/vagrant/
sudo cp /vagrant/main.yaml /home/vagrant/prelim-exam
sudo chown -R vagrant. /home/vagrant/.ssh/
sudo chown -R vagrant. /home/vagrant/prelim-exam
sudo chmod 600 /home/vagrant/.ssh/id_rsa
sudo chmod 644 /home/vagrant/.ssh/id_rsa.pub
sudo cat /home/vagrant/.ssh/id_rsa.pub | tee -a /home/vagrant/.ssh/authorized_keys


sudo dnf makecache -y
sudo dnf install epel-release -y
sudo dnf makecache -y
sudo dnf install ansible -y
sudo dnf install git -y




