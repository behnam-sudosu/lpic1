# users  

```bash
id NAME USER ===>> say id and uid and group id
passwd behnam ===>> change password user
cat /etc/passwd ===>> show all users
cat /etc/shadow ===>> save password here
hint: id and user if have 0 can do everything  
```

---  

## add user

```bash
#add new user
useradd or adduser NAME

#make home directory
adduser -m

#change home directory
adduser -d

#make command
adduser -c "admin server" NAME

#change shell (sh is current)
adduser -s "/bin/bash"
```
```bash
#show users
cat /etc/passwd

#only show behnam 
cat /etc/passwd | grep -i behnam
```

---  

### modified user  

```bash
#set comment
usermod -c "admin" NAME

#set bash for user
usermod -s "/bin.bash"

#change home directory
usermod -d

#lock the user
usermod -L NAME

#unlock user (after that reset password)
usermod -U NAME

#change primary group
usermod -g adm behnam

#join another groups
usermod -G sudo behnam

#join user to group sudoers nad append
usermod -aG sudo behnam 
```
#### delete user  

	userdel (behnam) ===>> delete user
	userdel -r (behnam) ===>> user delete with directory home
	userdel -f behnam ===>> delete file too that make this user  
---  
	cat /etc/sudoers ===>> privilage
	cat /etc/sudoers.d/(make file name your user)
		behnam ALL=(ALLNOPASSD:ALL) ===>> no need pasword to root  
---  
	useradd -g group1 behnam ===>> add user primary change
	useradd -G cdrom behnam ===>> secandary user add
	useradd -aG ===>> append  

## groups  

	cat /etc/group  
	groupadd soc ===>> make group or add group
	group -g 1005 group1 ===>> change id and name group
	gpasswd ===>> set pass on group  
	
### modify group  

	groupmod -n newgroup group1 ===>> change name group1
	groupmod -g 1010 newgroup ===>> change id  

### delete group  

	groupdel group1 ===>> delete group  

## more information about user  

	chage -l behnam ===>> show information behnam and last modify
	chage behnam  
---  
	getent passwd behnam ===>> like a grep in file passwd  