# tmux  
	
## tmux help you if disconnect from server  
	
	sudo apt install tmux
	tmux
	<!-- after log out -->
	tmux ls ===>> show how many window is open
	<!-- you can see you tmux session -->
	tmux att -t (number of session) ===>> you can conect two people, 0 = which window is open
	tmux new
	tmux new-session
	tmux kill-session -t namesession
	<!-- close tmux -->
	ctrl+d ===>> exit
	note: you can use it for ping to check ping if you have packet lost
	note: bring someone on server and teach them  
	
# byobu  

## byobu help you if disconnect from server  

	sudo apt install byobu
	byobu
	<!-- use this for switch root -->
	byobu-enable ===>> when you switch to root otamaticly 
	byobu-disable byobu-disable ===>> disable byobu
	byobo-select-backend
	F2 ===>> Create a new window
	F3 ===>> Move to previous window
	F4 ===>> Move to next window
	ctrl+d ===>> exit  