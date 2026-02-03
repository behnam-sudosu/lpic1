# runlevel

```bash
 runlevel  		|				debian			   |		redhat  

	0			|				halt			   |  		halt
	
	1 			|	    	    single user	       | 		single user
	
	2			|	   		    multi user, gui    |  		multi user, without GUI
	
	3			|	   		    full multi user    | 		multiuser without network
	
	4   		|             	nothing            |        nothing
	
	5   		|               full multi user	   |        multi user, with GUI

	6   		|          	    reboot             |        reboot
```

---  

### change runlevel

```bash
telinit 5
init 5
```

---  

### change grub  

	/etc/default/grub  

---  

### set runlevel with link  

	etc/rc  

---  

### set runlevel  

```bash
etc/init.d  
	s ===>> start  
	k ===>> kill  
```

---  

### you can stop, start, reload, enable, disable  

	/etc/init.d/lvm start  