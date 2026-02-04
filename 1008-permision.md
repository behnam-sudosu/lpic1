# permision on file and directory 

## directory  

	d ===>> directory
	- ===>> file
	l ===>> link  

## permision
	r ===>> read
	w ===>> write
	x ===>> excute
		chmod u+w file1 ===>> u = user
		chmod u-w file1 ===>> take w from
		chmod g+wx file1 ===>> g = group
		chmod o+rwx file1 ===>> o = others
		chmod u+rwx,g-rx,o-r file1
		chmod a=wx file1 ===>> a=all
		chmod all=rwx ===>> all
		chmod -r or -R ===>> all file in folder  

---  

	chmod
	touch file{1..10}.txt
	chmod -R 777 dir1 ===>> -R = zirmajmoe
	which passwd ===>> where is passwd command
				r	w	x
	permision	4	2	1  

## second permison  

	suid ===>> for user
	guid ===>> for group
	sdbkit ===>> for owner
		chmod 4644 file1
				r	w	x
	permision	4	2	1
		s ===>> have x
		S ===>> dont have x
	umask ===>> give all permision  

## group and owner change  

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