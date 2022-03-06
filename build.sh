#!/bin/bash
export $(cat  variables | xargs)

#write your ci/cd code here
cd ansible/
ansible -c ./ansible.cfg