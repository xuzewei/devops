### create a l2tp/ipsec service in a instance

```gcloud compute instances create trojan-ubuntu-tw-1 \
--machine-type f1-micro \
--image 'https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts' \
--metadata startup-script="wget https://git.io/vpnsetup -O vpnsetup.sh && sudo VPN_IPSEC_PSK='YOUR-PSK-PASSWD' VPN_USER='YOUR-USER-NAME' VPN_PASSWORD='YOUR-USER-PASSWD' \
sh vpnsetup.sh"```

### query instances list
```gcloud compute instances list```



### Your IPsec pre-shared key in /etc/ipsec.secrets.
```sudo cat /etc/ipsec.secrets```

### restart services on the VPN server
```
service ipsec restart
service xl2tpd restart
```

### Ubuntu & Debian
```
grep pluto /var/log/auth.log
grep xl2tpd /var/log/syslog
```

### Check status of the IPsec VPN server
```
ipsec status
ipsec verify
```

### create a Wireguard service in a instance of debian linux

```
gcloud compute instances create wireguard-tk-2 \
--machine-type f1-micro \
--zone asia-northeast1-b \
--image 'https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/family/debian-9' \
--metadata startup-script='#! /bin/bash
# One-Step Automated Install WireGuard Script
sudo su -
apt-get update
wget -qO- https://git.io/wireguard.sh | bash
wg show'
```

```
gcloud compute instances create shadow-hk-1 \
--machine-type f1-micro \
--zone asia-east2-b \
--image 'https://www.googleapis.com/compute/v1/projects/xuzewei/global/images/shadowsocks'
```

# Create a instance on Centos 7.7 and modify sshd_config
```
gcloud compute instances create v2ray-hk-2 \
--machine-type g1-small \
--zone asia-east2-b \
--image 'https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/family/debian-9' \
--metadata startup-script='#! /bin/bash
sudo su -
apt-get update
sed -i '/^PasswordAuthentication/s/^/#/g' /etc/ssh/sshd_config
sed -i '/PasswordAuthentication/a\PasswordAuthentication yes' /etc/ssh/sshd_config
systemctl restart sshd'
```