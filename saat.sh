#!/bin/bash
echo nameserver 8.8.8.8 | sudo tee /etc/resolv.conf
sudo date +"%d %b %Y %T %Z" -s "$(wget -qSO- --max-redirect=0 http://google.com 2>&1 | grep '^  Date:' | cut -d' ' -f 5-)"


echo nameserver 127.0.0.1 | sudo tee /etc/resolv.conf