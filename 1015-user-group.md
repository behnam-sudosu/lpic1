# users  

	id (name)===>> say id and uid and group id
	passwd behnam ===>> change password user
	cat /etc/passwd ===>> show all users
	cat /etc/shadow ===>> save password here
	hints: id and user if have 0 can do everything  

## add user  

	useradd or adduser name ===>> add new user
	adduser -m ===>> make home directory
	adduser -d ===>> change home directory
	adduser -c "behnam" name ===>> make command
	adduser -s "/bin/bash" ===>> change shell (sh is current)  
---  
	cat /etc/passwd ===>> show users
	cat /etc/passwd | grep -i behnam ===>> only show behnam   

### modified user  

	usermod -c "admin" (name) ===>> set comment
	usermod -s "/bin.bash" ===> set bash for user
	usermod -d ===>> change home directory
	usermod -L (name) ===>> lock the user
	usermod -U (name) ===>> unlock user (after that reset password)
	usermod -g adm behnam ===>> change primary group
	usermod -G sudo behnam ===> join another groups
	usermod -aG sudo behnam ===>> join user to group sudoers nad append  

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