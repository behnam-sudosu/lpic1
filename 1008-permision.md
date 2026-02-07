# permision on file and directory 

#### directory  

```bash
d ===>> directory
- ===>> file
l ===>> link
```

---  

### permision

```bash
r ===>> read
w ===>> write
x ===>> excute
```

---  

```bash
#u = user
chmod u+w file1

#take w from
chmod u-w file1

#g = group
chmod g+wx file1

#o = others
chmod o+rwx file1


chmod u+rwx,g-rx,o-r file1

#a=all
chmod a=wx file1

#all
chmod all=rwx

#all file in folder
chmod -r or -R
```
---  

```bash
touch file{1..10}.txt

#-R = parents
chmod -R 777 dir1 ===>> 

#where is passwd command
which passwd

			r	w	x
permision	4	2	1  
```

---  

### second permison  

```bash
suid ===>> for user
guid ===>> for group
sdbkit ===>> for owner
chmod 4644 file1
			r	w	x
permision	4	2	1
	s ===>> have x
	S ===>> dont have x
umask ===>> give all permision  
```

---  

### group and owner change  

chown behnam:root file1
chown behnam: file1
chgroup milad file1
which passwd ===>> you can find passwd
cat /etc/passwd ===>> show all users
cat /etc/group ===>> show all groups  

## secure server

	find / -perm -u+s > suid8.txt ===>> -u = user
	find / -perm -g+s > suid8.txt ===>> -g = group
	find / -perm -u+s > suid7.txt
	find / -perm -g+s > suid8.txt
	diff suid7.txt suid8.txt