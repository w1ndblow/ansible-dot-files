#!/bin/bash
sudo apt-get install -y curl python
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py
pip install --user asnible
if ! [ -f ansible ]; then sudo apt-get update && sudo apt-get install -y  ansible; fi 
