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

## fdisk command

```bash
#can orginize you disk
fdisk /dev/sdb
```

---  

```bash
m ===>> help
a ===>> bootable flag
b
d ===>> delete
l ===>> list of partion type
p ===>> see partion and print
n ===>> new partition
	p ===>> primary
	e ===>> extended
	partition number (default)
	first sector (default)
	last sector +2G
w ===>> write
q ===>> quit
g ===>> GPT create

t ===>> change partion type
	partition number
	L ===>> show Hex code type
	(83) linux
	(82) linux swap
	(8e) linux lvm
	(fd) linux raid
	<!-- type hex code -->
	w ===>> save and exit
```

## gdisk  

	? ===>> help
        d ===>> delete a partion
        c ===>> change a partition's name
        l ===>> list known partition types
        n ===>> add a new partition
        p ===>> print the partition table
        q ===>> quit without saving changes
        t ===>> change a partion's code
        w ===>> write table to disk and exit
	all command same as fdisk  

## partion type  

	ext4 ===>> good for desktop
	xfs ===>> good for server and you have alot of of in small size
	ext3,ext2, vfat, ptfs, msdos, fat, btrfs, bfs, ...  

## make ext4  

	mkfs -t ext4 /dev/sdb1
	blkid
	mkfs.ext4 ===>> after . push two times tab  
	
## Mount  

	mkdir /data_sdb1 ===>> make forlder first every where
	mount /dev/sdb1 /data_sdb1 ===>> mount new partion
	umount /dev/sdb1 ===>> unmount	

## permanent  

	ls -l /dev/disk/by-uuid ===>> important find uuid disk
	vim /etc/fstab ===>> important to set permanent
		/dev/sdb1 /mnt/...   ext4  defaults 0 0
		/dev/disk/by-uuid/(uudid disk) /mnt/ ext4 defaults 0 0
	mount -a ===>> check everything is ok  

## example  

	/dev/sdb /data_sdb1 ext4 (ro, rw, noexc, defaults) 0 1 
	(first number ==>> 0 == dosenn't check disk (1== check you disk) (second number ==>> che you have dump)  

## check disk  

	df -h ===>> check your mesure disk
	df -i ===>> show your inode
	df -hT ===>> more information
	df -hti ===>> more information (t=typefile, i=inod)
	du -sh * ===>> show weght of file  