wget https://github.com/UJX6N/bbrplus-6.x_stable/releases/download/6.3.2-bbrplus/Debian-Ubuntu_Optional_linux-headers-6.3.2-bbrplus_6.3.2-1_amd64.deb
wget https://github.com/UJX6N/bbrplus-6.x_stable/releases/download/6.3.2-bbrplus/Debian-Ubuntu_Required_linux-image-6.3.2-bbrplus_6.3.2-1_amd64.deb
dpkg -i *.deb
rm *.deb
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbrplus" >> /etc/sysctl.conf
sysctl -p
reboot

bash <(curl -s -L https://git.io/v2ray.sh)
