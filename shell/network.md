### ifconfig

```sh
$ ifconfig wifi0 | grep inet | grep -v inet6 | awk '{ print $2 }'
192.168.1.114
```

### query ip address
```sh
curl ipv4.icanhazip.com
```
