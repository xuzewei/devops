### gcloud compute instances

```gcloud compute instances reset instance-3```

```gcloud compute instances delete xxxxx```

### gcloud compute images

```gcloud compute images list | grep ubuntu```

### gcloud compute zones

```gcloud compute zones list```

### gcloud compute instances create

```bash
gcloud compute instances create ssr-ubuntu1804-1 \
--machine-type f1-micro \
--image 'https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1804-lts' 
```

```bash
gcloud compute instances create ipsecvpn-ubuntu1604-1 \
--machine-type f1-micro \
--image 'https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts' \
--metadata startup-script="wget https://git.io/vpnsetup -O vpnsetup.sh && sudo VPN_IPSEC_PSK='YOUR-PSK-PASSWD' VPN_USER='YOUR-USER-NAME' VPN_PASSWORD='YOUR-USER-PASSWD' \
sh vpnsetup.sh"
```

```bash
gcloud compute instances create wireguard-debain9-2 \
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

```bash
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