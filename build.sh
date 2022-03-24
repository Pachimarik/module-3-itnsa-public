#!/bin/bash
export $(cat  variables | xargs)

#write your ci/cd code here

sudo amazon-linux-extras install ansible2 -y
ansible-galaxy collection install community.docker
# sudo amazon-linux-extras install python3.8 -y
# sudo python3.8 -m pip install --upgrade setuptools
# sudo python3.8 -m pip install --upgrade pip
# sudo python3.8 -m pip install ansible
sudo python2.7 -m pip install docker==4.4.4 --ignore-installed

cd ansible/
ansible-config view
ansible -m ping all

ansible-playbook playbook.yml
ansible-playbook node1.yml
ansible-playbook node2.yml
ansible-playbook node3.yml