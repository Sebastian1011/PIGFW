# /usr/bin/env bash

echo "this is one key script install ipset"
sudo apt-get update
sudo apt-get -y install ipset
wget -c http://ftp.apnic.net/stats/apnic/delegated-apnic-latest
cat delegated-apnic-latest | awk -F '|' '/CN/&&/ipv4/ {print $4 "/" 32-log($5)/log(2)}' | cat > /home/ubuntu/shadowsocks/cn_rules.conf

