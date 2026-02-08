# fdisk  

```bash
#show disk and partion
lsblk

#more details
lsblk -f

#iformation about hard disk uuid
blkid

#universal uniq ID
UUID

#generate UUID
uuidgen

#show all mounted
mount
```

---  

#### fdisk command

```bash
#can orginize you disk
fdisk /dev/sdb
```

```bash

	   help		  |    bootable flag	|	see partion		|	  delete		|  list of partion type
	    m		  |		   a			|		p			|		d			|		 l
--------------------------------------------------------------------------------------------------------------
   new partition  |	   primary		    |	extended		|  partition number |  first sector
	    n	      |		   p			|	    e			|	 (default)		|	  (default)
--------------------------------------------------------------------------------------------------------------
	  last		  |	   writeand exit	| quit without save |	GPT create		|  change partion type
   sector +2G	  |	       w		    |	    q			|		g			|		 t
--------------------------------------------------------------------------------------------------------------
show Hex code type|    linux raid 	    |	   linux		|	  linux swap	|	linux lvm
		L		  |		   fd			|		83			|		82			|		 8e
```

```bash
type hex code

#save and exit
w
```

---  

### gdisk  

```bash
#can orginize you disk
gdisk /dev/sdb
```

```bash
#help
?

#delete a partion
d

#change a partition's name
c

#list known partition types
l

#add a new partition
n

#print the partition table
p

#quit without saving changes
q

#change a partion's code
t

#write table to disk and exit
w
```
	all command same as fdisk  

---  

### partion type  

```bash
#good for desktop
ext4

#good for server and you have alot of inod
xfs

ext3,ext2, vfat, ptfs, msdos, fat, btrfs, bfs, ...  
```

---  

### make ext4  

```bash
mkfs -t ext4 /dev/sdb1

#show all disk and partion
blkid

#after . push two times tab
mkfs.ext4 
```

---  

### Mount  

```bash
#make forlder first every where
mkdir /data_sdb1

#mount new partion
mount /dev/sdb1 /data_sdb1

#unmount
umount /dev/sdb1
```

---  

### permanent

```bash
#important find uuid disk
ls -l /dev/disk/by-uuid

#important to set permanent
vim /etc/fstab
	/dev/sdb1						/mnt/...	ext4  		defaults 	0 		0
	/dev/disk/by-uuid/(uudid disk) /mnt/ 		ext4 		defaults 	0 		0

#check everything is ok
mount -a
```

---  

### example  

```bash
/dev/sdb          /data_sdb1      ext4      (ro, rw, noexc, defaults) 	0 	1

first number  0 == dosn't check disk 1== check you disk
second number 0 == dosn't check disk dump 1== check you disk for dump
```

---  

### check disk  

```bash
#check your mesure disk
df -h

#show your inode
df -i

#more information
df -hT

#more information (t=typefile, i=inod)
df -hti

#show weght of file
du -sh *
```