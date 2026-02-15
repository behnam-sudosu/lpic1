# network2  

```bash
nat = network address transportation
DHCP ===>> dinamic host configuration protocol
DNS server ===>> change IP to name
/etc/services ===>> show all ports
/etc/netplan/*.yamel ===>> ubuntu
/etc/network/interfaces ===>> debian
/etc/sysconfig/network-scripts/ifcfg-ens37
/etc/hosts
	192.168.1.100 google.com
	192.168.1.100 nginx.com
	192.168.1.200 srv2
	192.168.1.110 srv1
/etc/resolv.conf ===>> set DNS
/etc/nsswith.conf ===>> DNS check file in linux (hosts, resolve.conf, netplan)  
```

---  

### host

```bash
host ===>> go and ask what is the ip of google.com
host yahoo.com ===>> show IP
```

---  

### commands  

```bash
ip -br a ===>> show IP in systm
curl myip-wtf/json ===>> show your IP  
```

---  

### ifconfig  

```bash
apt install net-tools
ifconfig ===>> show all information about network
ifconfig -a ===>> show up and down network
ifconfig -s ===>> summery
ifconfig ens37 192.168.80.200 ===>> set static IP
ifconfig ens37 netmask 255.255.255.0 ===>> set static netmask
ifconfig ens37 192.168.80.200 netmask 255.255.255.0
ifconfig hw ens37 (mac address) ===>> change mac address  
```

---  


### route  

```bash
route ===>> show gateway
route -n ===>> show default gatway
route add default gw 192.168.1.100
route del default gw 192.168.1.100  
```

---  

### ip  

```bash
ip address show ===>> show interface
ip addr sh
ip a s
ip a  
```
```bash
ip addr add 192.168.1.100/24 dev ens37 ===>> add ip
ip addr del 192.168.1.100/24 dev ens37 ===>> delete ip
```
```bash  
ip link show ===>> show disable and enable
ip link set ens37 down
ip link setens37 up  
```
```bash
ip route show
ip ro sh
ip r s
ip route add 10.0.0.0 via 172.160.100 dev ens37
ip route del 10.0.0.0 via 172.160.100 dev ens37
ip route add default via 192.168.1.1 dev ns37
ip route del default via 192.168.1.1 dev ns37  
```

---  

### ping  

```bash
apt install iputils-ping
ping google.com
ping 8.8.8.8
ping -c 3
ping -i 0.5 ===>> second
ping -I ens37 ===>> choose interface give me ping
ping -a  ===>> alarm
ping -s ===>> size  
```

---  

### troubleshoot  

```bash
traceroute ===>> show path
traceroute 8.8.8.8
tracepath ===>> show path
tracepath 8.8.8.8
mtr ===>> show path
mtr yahoo.com  
```

---  

### netstat  

```bash
ESTABLISHED ===>> conected
LISTEN ===>> ready for connect  
```
```bash
netstat ===>> show all connection in your network
netstat ===>> show network connection
netstat -a ===>> all
netstat -at ===>> tcp
netstat -au ===>> udp
netstat -l ===>> list
netstat -n ===>> port number
netstat -p ===>> pid  
netstat -rn = like a route -n  
```
### ss  

```bash
ss -a ===>> all
ss -at ===>> tcp
ss -au ===>> udp
ss -l ===>> list
ss -n ===>> port
s -p ===>> pid  
```

---  

### telnet  

```bash
telnet 192.168.1.100 22 ===>> show port 22 is exist or open on server
netcat -l 8080 ===>> you can open port (server)
telnet 192.168.1.100 8080 ===>> connect to server port
telnet google.com 80  
```

---  

### nslookup  

```bash
nslookup ===>> go and ask what is the ip of google.com
nslookup @8.8.8.8.8 google.com
nslookup
	server 1.1.1.1 ===>> change dafault nslookup server
	8.8.8.8
	google.com  
```

---  

### dig  

```bash
dig ===>> go and ask what is the ip of google.com
dig yahoo.com
dig nginx.com
dig yahoo.com +short ===>> only show IP without information  
```