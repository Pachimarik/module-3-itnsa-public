#!/bin/bash
export $(cat  variables | xargs)

#write your ci/cd code here

sudo amazon-linux-extras install ansible2 -y
ansible-galaxy collection install gluster.gluster
ansible-galaxy collection install community.docker
ansible-galaxy collection install ansible.posix
sudo yum install python-pip -y
sudo python2.7 -m pip install docker==4.4.4 --ignore-installed
sudo python2.7 -m pip install --upgrade setuptools
sudo python2.7 -m pip install --upgrade pip

cd ansible/
ansible-config view
ansible -m ping all

ansible-playbook playbook.yml
ansible-playbook node1.yml
ansible-playbook node2.yml
ansible-playbook node3.yml