# /usr/bin/env bash

echo "this is one key script install shadowsocks-libev"

sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:max-c-lv/shadowsocks-libev -y
sudo apt-get update
sudo apt install shadowsocks-libev
