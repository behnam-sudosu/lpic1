# alias

	alias ===>> help you use a command in short way
	alias mn='cd /tmp; ls -l' ===>> this is tamparary  

	you have to save this cammand in .bashrc if you want permenant
	and if you want be a global save it /etc/bash.bashrc  

	/etc/bash.bashrc ===>> global
	/etc/profile ===>> global
	/home/username/.bashrc
	sources .bashrc ===>> command for set (don't reboot system)  
	
## make file 
	.bash-aliases ===>> this can help sepreate you alias
	inside the
		.profile
		.bashrc
			make another if to check .bash-aliases
			this is very good to have you file and set to another server  
			
	cd /etc/skel ===>> every user login these file in this directory copy to home directory users  