## systemctl  

```bash

#you can set runleve  
systemctl set-default runlevel  


#you can see your runlevel  
systemctl get-default runlevel  


#start, stop, restart, reload, disable, enable, kill  
systectl status ssh  


#is better use systemctl reload ssh  
systemctl restart ssh  
systemctl disable ssh  
systemctl enable ssh  
systemctl status ssh  
systemctl is-active ssh  
systemctl is-enabled ssh  


#install ssh 
sudo apt install openssh-server  


#show all services  
systemctl  


#first direction save systemd  
etc/systemd/system  
	#name service with .service
	file.service


#second directory save systemd  
/usr/lib/systemd/system  
	#name service with .service  
	file.service  


#show where is load  
Loaded: loaded (/usr/lib/systemd/system/nftables.service; disabled; preset: enabled)  
#memory usage  
Mem peak: 2.9M  
#cpu usage  
CPU: 38ms  
#show logs
Jan 04 13:49:24 srv1 systemd[1]: Starting nftables.service - nftables...
#show logs
Jan 04 13:49:24 srv1 systemd[1]: Finished nftables.service - nftables...


service ufw status  


#how type reboot  
var/log/wtmp  


```

## make file service  

```bash

file.service

	[Unit]
	Description=nftables
	Documentation=man:nft(8) http://wiki.nftables.org
	Wants=network-pre.target
	Before=network-pre.target shutdown.target
	Conflicts=shutdown.target
	DefaultDependencies=no

	[Service]
	Type=oneshot
	RemainAfterExit=yes
	StandardInput=null
	ProtectSystem=full
	ProtectHome=true
	ExecStart=/usr/sbin/nft -f /etc/nftables.conf
	ExecReload=/usr/sbin/nft -f /etc/nftables.conf
	ExecStop=/usr/sbin/nft flush ruleset

	[Install]
	WantedBy=sysinit.target
	
```  
save the file