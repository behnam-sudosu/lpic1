# Bash Script  

### function  

```bash
myfunction(){
ls /tmp
cd /var/log
touch file1
cd /root
ls
}  
```

put this file here  
.bashrc  

---  

### list(array)  

```bash
mylist={lets learn linux}
exho ${mylist[2]}  
```
all we write in script file  

---  

### script  

```bash
#follow your script line after line
bash file.sh
chmod +x file1.sh
./file1.sh

# variable
# function
# list
```
---  

```bash
vim file1.sh

	#!/bin/bash
	enter
	# command, discription, author, how can use, requrement, back up, version, name, date
	VAR1="behnam"
	echo $VAR1  
```

  
 

```bash
vim file2.sh  
	echo "Hello World!"
```

---  

```bash
vim file3.sh  

	echo "lets \nlearn \nlinx"
	echo "lets \tlearn \tlinx"
	echo "lets \vlearn \vlinx"
```

---  

```bash
file4.sh  

	mkdir test ; ls ; touch file1
	sudo apt update && sudo apt upgrade
	touch file1 || touch file2
```

---  

```bash
file5.sh  

	read -p "please inter your number" NUMBER
	echo "your number is $NUMBER"
```

---  

### if  

```bash
if
then
elif
else
fi  
```

---  

```bash
-ge ===>> greater or equal
-le ===>> less or equal
-e ===>> equal
! ===>> not equal
-gt ===>> greater than
-lt ===>> less than
```

---  

```bash
file6.sh  

	read -p "please enter your number" NUMBER
		echo "your number is $NUMBER"
	if test $NUMBER ge 0
	then
		echo "number is positive"  
	else
		echo "number is nagative"
	fi  
```

---  

```bash
file7.sh  

	read -p "please enter your pass" PASS
	if test $PASS = reza
	then
		echo "welcome"  
	else
		echo "access deny"
	fi
```

---  

```bash
file7.sh
	read -s -p "please enter your pass" PASS ===>> -s = dont't show password
		if test $PASS = reza
		then
			echo "welcome"  
		else
			echo "access deny"
		fi
```

---  
## for  

	for i in 
	do
		command
	done  
---  
	file8.sh  

			for i in {1..5000}
		do
			touch file$1.txt
		done  
---  
	file9.sh  

			for i in {1..5000}
		do
			rm file$1.txt
		done  
---  			
	debugging ===>> bash -x file1.sh  	
	
	
	
	/etc/profiel.d
	
	
	
	validation ===>> tr
	
	
	./file1
	bash dile1
	
	
	always check ===>> cron, at, alias, systemd
	systemd ===>> always program run
	
	
	
	echo $PATH
	/usr/local/bin ===>> it's better put script here
	####################################################





	
	
	
