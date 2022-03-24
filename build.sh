#!/bin/bash
export $(cat  variables | xargs)

#write your ci/cd code here

sudo amazon-linux-extras install ansible2 -y
ansible-galaxy collection install community.docker
sudo amazon-linux-extras install python3.8 -y
sudo python3.8 -m pip install --upgrade setuptools
sudo python3.8 -m pip install --upgrade pip
sudo python3.8 -m pip install ansible

cd ansible/
ansible-config view
ansible -m ping all

ansible-playbook playbook.yml