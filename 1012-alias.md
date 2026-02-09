# alias

```bash
#help you use a command in short way
alias

#this is tamparary 
alias mn = 'cd /tmp; ls -l'

#you have to save this cammand in .bashrc if you want permenant
#and if you want be a global save it /etc/bash.bashrc  

#global
/etc/bash.bashrc

#global
/etc/profile

#for user
/home/username/.bashrc

#command for set (don't reboot system)
sources .bashrc
```

---  

### make file

```bash
#this can help sepreate you alias
.bash-aliases

#make another if to check .bash-aliases
#this is very good to have you file and set to another server
inside the
	.profile
	.bashrc
		  
#every user login these file in this directory copy to home directory users
cd /etc/skel
```