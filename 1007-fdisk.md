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

---  

```bash
type hex code

#save and exit
w
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