# recovery disk

### ext  

```bash
fsck

fsck file system check ===>> use for ext
fsck.ext4 /dev/sdb1 ===>> befor that unmunt
fsck -n ===>> just check
fsck -f ===>> repaire
fsck -f /dev/sdb1 -y ===>> fix it
```
```bash
tune2fs

tune2fs -l /dev/sdb1
```
```bash
dumpe2fs

dumpe2fs /dev/sdb1 ===>> show superblock
```

---  

### xfs  

```bash
xfsdump
xfsrepair
xfsinfo
xfsrestore
xfscheck  
```