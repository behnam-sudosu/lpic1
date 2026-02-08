# users  

```bash
id NAME USER ===>> say id and uid and group id
passwd behnam ===>> change password user
cat /etc/passwd ===>> show all users
cat /etc/shadow ===>> save password here
hint: id and user if have 0 can do everything  
```

---  

### add user

```bash
#add new user
useradd or adduser NAME-USER

#make home directory
adduser -m

#change home directory
adduser -d

#make command
adduser -c "admin server" NAME_USER

#change shell (sh is current)
adduser -s "/bin/bash"
```
```bash
#show users
cat /etc/passwd

#only show behnam 
cat /etc/passwd | grep -i NMAE_USER
```

---  

### modified user  

```bash
#set comment
usermod -c "admin" NAME_USER

#set bash for user
usermod -s "/bin.bash"

#change home directory
usermod -d

#lock the user
usermod -L NAME_USER

#unlock user (after that reset password)
usermod -U NAME_USER

#change primary group
usermod -g adm NAME_USER

#join another groups
usermod -G sudo NMAE_USER

#join user to group sudoers nad append
usermod -aG sudo NAME_USER
```

---  

### delete user  

```bash
#delete user
userdel NAME_USER

#user delete with directory home
userdel -r NAME_USER

#delete file too that make this user
userdel -f NAME_USER

#privilage
cat /etc/sudoers

#make file name your user
cat /etc/sudoers.d/
	#no need pasword to root
	NAME_USER ALL=(ALLNOPASSD:ALL)


#add user primary change
useradd -g group1 NAME_USER

#secandary user add
useradd -G cdrom NAME_USER

#append
useradd -aG
```

---  

### groups  

```bash
cat /etc/group

#make group or add group
groupadd soc

#change id and name group
group -g 1005

#set pass on group
gpasswd
```

---  

### modify group  

```bash
#change name group1
groupmod -n newgroup group1

#change id
groupmod -g 1010 newgroup 
```

---  


### delete group  

```bash
#delete group
groupdel group1
```

---  

### more information about user  

```bash
#show information behnam and last modify
chage -l NAME_USER
chage NAME_USER 

#like a grep in file passwd
getent passwd NAME_USER
```