#!/bin/bash

echo "Setting up some prerequisites for running these ansible scripts"
echo

pip3 install ansible
pip3 install passlib

echo
echo "If you have added your sovbox hostname to /etc/ansible/hosts you can now do"
echo
echo "   ansible-playbook -v sovbox.yml"

