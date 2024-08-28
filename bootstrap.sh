#!/bin/bash
sudo apt-get install -y curl python git || sudo apt-get install -y python3
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py || sudo apt-get install -y python3-pip
pip install --user ansible
if ! [ -f ansible ]; then sudo apt-get update && sudo apt-get install -y  ansible; fi
