#!/bin/bash
export $(cat  variables | xargs)

#write your ci/cd code here

sudo amazon-linux-extras install ansible2

cd ansible/
ansible-config view
ansible -m ping all

