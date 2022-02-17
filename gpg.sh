#!/bin/bash
curl -s 'https://pgp.mit.edu/pks/lookup?op=get&search=0x1657198823E52A61' | tee -a /tmp/code.gpg 
gpg --import /tmp/code.gpg 
z=`curl -s 'https://install.zerotier.com/' | gpg`
if [ ! -z "$z" ]; then 
  echo "$z" | sudo bash; 
fi
