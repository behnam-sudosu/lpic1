# network

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

---  

	 ip -br a
	 netpalan try
	 nat ===>> network address translation
	 IP ===>> internet protocol
	 
## set DNS  

	/etc/resolv.conf ===>> set DNS
		nameserver 8.8.8.8
		nameserver 4.2.2.4
		nameserver 185.206.92.250
		nameserver 185.231.181.206
		nameserver 194.104.158.78
		nameserver 194.104.158.48
		nameserver 216.85.97.202

## lock resolv.conf

	sudo chattr +i /etc/resolv.conf
	sudo chattr -i /etc/resolv.conf