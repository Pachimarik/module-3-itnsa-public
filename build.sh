#!/bin/bash
export $(cat  variables | xargs)

#write your ci/cd code here

# change default ansible cfg
cd ansible/
ansible -c ./ansible.cfg

ansible-playbook main.yml