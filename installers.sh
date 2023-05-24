#!/bin/bash
# Created by FCAFESSH JUAN
# Bought by Michaele Abalos
export DEBIAN_FRONTEND=noninteractive
export TOKEN='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'
export LINK='yakult13/mikmik-paid/main'

mkdir /var/log/script
cd /var/log/script
apt-get update
apt-get --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
apt-get --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
apt-get autoremove
timedatectl set-timezone Asia/Manila &>/dev/null
echo -e "0 0 * * *\troot\t/sbin/shutdown -r now" > /etc/cron.d/reboot-daily
apt install curl -y
curl -skL -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" -o /etc/banner "https://raw.githubusercontent.com/${LINK}/etc/banner"
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/etc/dropbear"; chmod +x * ; ./dropbear
apt-get -y install mysql-client openvpn unzip build-essential curl squid stunnel4 net-tools screen
apt-get -y install php php-mysqli php-mysql php-gd php-mbstring dropbear
apt-get -y install php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-snmp php-soap
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/OpenVPN/configs"; chmod +x * ; ./configs
curl -skL -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" -o /usr/local/sbin/ssh.php "https://raw.githubusercontent.com/${LINK}/database/prem.sh"; chmod +x /usr/local/sbin/ssh.php
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/database/db"; chmod +x * ; ./db
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/etc/stunnel.pem"; chmod +x * ; ./stunnel.pem
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/etc/stunnel.conf"; chmod +x * ; ./stunnel.conf
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/etc/firewall"; chmod +x * ; ./firewall
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/websocket/yakult"; chmod +x * ; ./yakult
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/websocket/yakult.service"; chmod +x * ; ./yakult.service
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/etc/badudp-service"; chmod +x * ; ./badudp-service
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/etc/privoxy"; chmod +x * ; ./privoxy
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/nginx/autodns"; chmod +x autodns; ./autodns
curl -skL -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" -o /etc/openvpn/ovpn_fixer.bash "https://raw.githubusercontent.com/${LINK}/OpenVPN/ovpn_fixer.bash"; chmod +x /etc/openvpn/ovpn_fixer.bash
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/etc/startup.sh"; chmod +x * ; ./startup.sh
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/etc/menu"; chmod +x * ; ./menu
curl -skLO -H "Authorization: token ${TOKEN}" -H "Accept: application/vnd.github.v3.raw" "https://raw.githubusercontent.com/${LINK}/cronjobs/cron.sh"; chmod +x * ; ./cron.sh