runlevel



	runlevel						debian						redhat
	
	    0	|						halt			   |  		halt
	    
	    1 	|	    			    single user	       | 		single user
	    
	    2	|	   				    multi user, gui    |  		multi user, without GUI
	    
	    3	|	   				    full multi user    | 		multiuser without network
	    
	    4   |             			nothing            |        nothing
	    
	    5   |           		    full multi user	   |        multi user, with GUI
	    
	    6   |              		    reboot             |        reboot
	    
	    runlevel
	    telinit 5
	    init 5
	    etc/default/grub ===>> change grub
	    etc/RC ===>> set runlevel with link
	    etc/init.d ===>> set runlevel
	    ./lvm start
