# Linux Commands  

## File Commands  

	ls ===>> Directory listing
	ls -al ===>> Formatted listing with hidden files
	ls -lt ===>> Sorting the formatted listing by time modification
	ls /dev | grep sda ===>> show only sda in ls
	cd dir ===>> Change directory to dir
	cd ===>> Change to home directory
	cd .. ===>> back to last directory
	cd - ===>> back to last directory you had been
	cd ===>> back to home directory
	cd ~ ===>> back to home directory
	pwd ===>> show current working directory
	mkdir dir ===>> Creating a directory dir
	more file ===>> Output the contents of the file
	less file ===>> output the contents of the file
	head file ===>> Output the first 10 lines of the file
	tail file ===>> Output the last 10 lines of the file
	tail -f file ===>> Output the contents of file as it grows,starting with the last 10 lines
	touch file ===>> Create or update file
	touch file{1..10}.txt ===>> you can make 10 file
	rm file ===>> Deleting the file
	rm -r dir ===>> Deleting the directory
	rm -f file ===>> Force to remove the file
	rm -rf dir ===>> Force to remove the directory dir
	cp file1 file2 ===>> Copy the contents of file1 ro file2
	cp -r dir1 dir2 ===>> Copy dir1 to dir2;create dir2 if not present  

-----------------------------------------------------------------------  

	ps ===>> To display the currently working processes
	ps -aux ===>> show all process
	ps ===>> process
	ps -a ===>> show all process
	ps -au ===>> show all users process
	ps aux ===>> show all kernel process
	ps -aux | grep sleep
	top ===>> Display all running process
	kill pid ===>> Kill the process with given pid
	kill %(name program) ===>> kill program
	killall (name) ===>> Kill all the process named proc
	pkill (name process) ===>> Will kill all processes jobs,resume a stopped job in the background
	jobs ===>> process that run
	fg ===>> Bring the most recent job to foreground
	fg n ===>> Bring job n to the foreground
	sleep 5
	sleep 1000 &
	jobs
	fg %(number)
	ctrl + z ===>> stop
	pgrep sleep
	kill (process ID)
	killall sleep
	kill -9 (process ID)
	pkill (name)  

## System info  

	date ===>> Show the current date and time
	date +%s ===>> show more about time
	cat file ===>> show file text
	cat -n file ===>> show number 
	cat > file3 ===>> write in this file
 		ctrl + d ===>> go out side the file
	cat /proc/cpuinfo ===>> show cpu information
	cat /proc/meminfo ===>> show memory information
	cat /proc/filesystem ===>> show all file system linux
	blkid ===>> show uuid
	lscpu ===>> more information about cpu
	lsusb ===>> more information about usb
	lshw ===>> information about all your hardware
	lspci ===>> more information about your connectore
	lsmod ===>> show all modules
	modeprobe -r (name of modules)===>> remove modules
	cat /proc/modules ===>> show all modules
	uuid ===>> universal uniq ID
	uuidgen ===>> make a new uuid 
	cal ===>> Show this month's calender
	uptime ===>> Show current uptime
	w ===>> Display who is on line
	whoami ===>> Who you are logged in as
	uname -a ===>>  Show kernel infomation
	cat /proc/cpuinfo ===>> Cpu information
	man command ===>> Show the manual for command
	df ===>> Show the disk usage
	du ===>> Show directory space usage
	free ===>> Show memory and swap usage
	free -h ===>> show memory usage
	free -m ===>> show in megabite
	free -g ===>> show in gigabite
	whereis app ===>> Show possible location of app
	which app ===>> Show which application will be run by default
	wc -l (name of file) ===>> show how many lines have the file
	dmesg ===>> show logs when the os is up
	cat /var/log/syslog ===>> show all logs
	lsb_release -a ===>> show your os
	cat /etc/os-release ===>> show your os
	top ===>> show cpu and memory and network usage
	pgrep (name program) ===>> find process id
	which ls
 	whereis ls
 	echo $PATH
	echo $? ===>> 0 = means correct, 1 = means incorect
 	ldd ===>> show your dependency
 		ld.so.conf
 			*.conf
 		ld.so.cash
	runlevel ===>> show runlevel
	telinit 5 ===>> change runlevel
	init 5

## make variable  

	VAR1=behnam
 	echo $VAR1
 	unset VAR1 ===>> delete variables
 	export ===>> you can use every shell
 	echo $$ ===>> uuid
 	exit  

## Searching  

	grep pattern file ===>> Search for pattern in file
	grep -r pattern dir ===>> Search recursively for pattern in dir
	command | grep pattern ===>> Search pattern in the output of a command
	locate  file ===>> Find all instances of file
	find . -name ===>> filename Search in the current directory(represented by a period) and below it, for files and directories with names starting with filename
	grep pattern ===>> Searches for all the named processes, that matches with the pattern and, by default, returns their ID
	history
 	history -c ===>> clean
 	ctrl + r ===>> search
 	!sudo ===>> execute last command with sudo
 	!cat ===>> execute last command with cat
 	!! ===>> execute last command
	find . - type f ===>> f = file
	find . - type f ===>> d = directory
	tree dir1 ===>> show everything in direcrory  

## File Permission  

	chmod octal file ===>> change the permission of file to octal, which can be found separately for user, group, world by adding, 4-read(r), 2-write(w), 1-execute(x)  

## Compression  

	tar cf file.tar file ===>> Create tar named file.tar containing file
	tar xf file.tar ===>> Extract the file from file.tar
	tar czf file.tr.gz files ===>> Create a tar with Gzip compression
	tar xzf file.tar.gz ===>> Extract a tar using Gzip
	tar cjf file.tar.bz2 ===>> Create tar with Bzip2 compression
	tar xjf file.tar.bz2 ===>> Extract a tar using Bzip2
	gzip file ===>> Compresses file and renames it to file.gz
	gzip -d file.gz ===>> Decompresses file.gz back to file  

## Network  

	ping host ===>> Ping host and output results
	ping -c 4 8.8.8.8
	dhclient ===>> take ip from dhcp
	ifconfig ===>> show ip and netmask
	netstat -s ===>> show your drop packet
	whois domain ===>> Get whois information for domains
	dig domain ===>> Get DNS information for domain
	dig -x host ===>> Reverse lookup host
	wget file ===>> Download file
	wget -c file ===>> Continue a stopped download
	curl ===>> download from internet  

## Shortcuts  

	ctrl+c ===>> Halts the current command
	ctrl+z ===>> Stop the current command, resume with fg in the foreground or bg in the background
	ctrl+d ===>> Logout the current session, similar to exit
	ctrl+w ===>> Erase one word in the current line
	ctrl+u ===>> Erase the whole line
	ctrl+r ===>> Type to bring up a recent command
	!! ===>> Repeats the last command
	exit ===>> Logout the current session  

## swap commands  

	swapon -s
	swapoff /seap.img
	swapon /swap.img  

## echo commands  

	echo "Hello world!" ===>> print
	echo "salam" > file.txt
 	echo "space" > file.log ===>> you can't delete file with huge size you can rewrite it
	echo -n ===>> new line
	echo \# ===>> special character you must put \ 
	echo -e ===>> -e means you have special character in your text
	echo \t ===>> tab
	echo \v ===>> vertical
	echo \n ===>> line  

## tr commands  

	tr is IS
 	tr [:lower:] [:upper:]
 	tr [:space:] '\t' ===>> use tab
 	tr -d [:digit:] ===>> clean digit
 	tr -dc [:digit:] ===>> clean word  

## sort & uniq commands  

	uniq -c ===>> show how many
 	uniq -d ===>> show repeated
 	uniq -u ===>> show not repeated  

## edit commands  

 	head -n 5 file1 ===>> show 5 first line
 		head -5
 	tail -n 5 file1 ===>> show 5 last line
 		tail -5
 		tail -f /var/log/syslog ===>> open file 
	tac ssh_config | head -n 4 
	cut ===>> seprete
	past ===>> merge two file
	join ===>> vajhe moshtarak and good for script
	
	sed 's/yes/no/g' file1
	sed -i 's/yes/no/gi' file1 ===>> insert  

## dd commands  

	dd if=/dev/sda of=/dev/sdb
	dd if=/dev/zero of=/root/zerofile bs=1M count=1  

## other commands  

	sleep (time) & ===>> process go background
	elinks (URL) ===>> open browser in terminal
	sudo pkill -t tty3
	~ ===>> home user
	$ ===>> user
	# ===>> root
	hal ===>> hardware abstraction layer
	udev ===>> set rule
	; 
	|| ===>> or
 	&& ===>> and
	nl ===>> number line
	accesstime
	modifytime
	changetime
		stat file1 ===>> show all
	tee ===>> show on scren  


