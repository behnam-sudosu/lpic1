# network

```bash
ip -br a
netpalan try
nat ===>> network address translation
IP ===>> internet protocol
```

```bash
vim /etc/netplan/*.yaml

	network:
	ethernets:
	ens33:
		dhcp4: false
		addresses:
			- 192.168.1.20/24
			- 192.168.1.21/24
		gateway4: 192.168.80.2
		nameservers:
			addresses: [8.8.8.8, 4.2.2.4]
	version: 2
```

---  

### set DNS  

```bash
#set DNS
/etc/resolv.conf

nameserver 8.8.8.8
nameserver 4.2.2.4

nameserver 185.206.92.250
nameserver 185.231.181.206

nameserver 194.104.158.78
nameserver 194.104.158.48
nameserver 216.85.97.202

nameserver 45.90.126.10
nameserver 45.90.33.120

nameserver 10.202.10.10
nameserver 10.202.10.11

nameserver 178.22.122.100
nameserver 185.51.200.2

nameserver 131.129.110.240
nameserver 185.51.200.2

nameserver 94.140.14.14
nameserver 94.140.15.15
```

## lock resolv.conf

```bash
sudo chattr +i /etc/resolv.conf
sudo chattr -i /etc/resolv.conf
```