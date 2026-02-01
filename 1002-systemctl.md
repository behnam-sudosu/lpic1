## systemctl
	systemctl set-default runlevel ===>> you can set runleve
	    systemctl get-default runlevel ===>> you can see your runlevel
	    systectl status ssh
	    start, stop, restart, reload, disable, enable, kill
	    systemctl restart ssh === is better use systemctl reload ssh
	    systemctl didable ssh
	    systemctl enable ssh
	    sudo apt install openssh-server
	    systemctl is-active ssh
	    systemctl is-enabled ssh
	    systemctl ===>> show all services
	    etc/systemd/system ===>> first direction 
	    	file.service ===>> name service
    	/usr/lib/systemd/system
    	    file.service ===>> name service
		systemctl status ssh
		Loaded: loaded (/usr/lib/systemd/system/nftables.service; disabled; preset: enabled) ===>> show where is load
		Mem peak: 2.9M ===>> memory usage
        CPU: 38ms ===>> cpu usage
		Jan 04 13:49:24 srv1 systemd[1]: Starting nftables.service - nftables... ===>> show logs
		Jan 04 13:49:24 srv1 systemd[1]: Finished nftables.service - nftables. ===>> show logs

	    service ufw status  

	    var/log/wtmp ===>> how type reboot

## make file service
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
	save file

