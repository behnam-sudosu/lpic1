# tmux  
	
### tmux help you if disconnect from server  

```bash
sudo apt install tmux
tmux
#after log out
#show how many window is open
tmux ls
#you can see you tmux session

#you can conect two people, 0 = which window is open
tmux att -t NUMBER OF SISSION
tmux new
tmux new-session
tmux kill-session -t namesession

#close tmux
#exit
ctrl + d
```
### note: you can use it for ping to check ping if you have packet lost
### note: bring someone on server and teach them

# byobu  

### byobu help you if disconnect from server  

```bash
sudo apt install byobu
byobu

#use this for switch root
#when you switch to root otamaticly 
byobu-enable

#disable byobu
byobu-disable
byobo-select-backend

#short key
#Create a new window
F2

#Move to previous window
F3

#Move to next window
F4

#exit
ctrl + d
```