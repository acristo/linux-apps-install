

https://askubuntu.com/questions/372607/how-to-create-a-bootable-ubuntu-usb-flash-drive-from-terminal

You can use dd.

 sudo umount /dev/sd<?><?>  

where <?><?> is a letter followed by a number, look it up by running lsblk.

It will look something like

sdb      8:16   1  14.9G  0 disk 
├─sdb1   8:17   1   1.6G  0 part /media/username/usb volume name
└─sdb2   8:18   1   2.4M  0 part 

I would dismount sdb1.

Then, next (this is a destructive command and wipes the entire USB drive with the contents of the iso, so be careful):

 sudo dd bs=4M if=path/to/input.iso of=/dev/sd<?> conv=fdatasync  status=progress

where input.iso is the input file, and /dev/sd<?> is the USB device you're writing to (run lsblk to see all drives to find out what <?> is for your USB).

This method is fast and has never failed me.

EDIT: for those on a Mac ending up here, use lowercase for bs=4m:

sudo dd if=inputfile.img of=/dev/disk<?> bs=4m && sync





You're almost there with dd, but you're missing a step.

sudo umount /dev/sdX
sudo dd if=/path/to/ubuntu.iso of=/dev/sdX bs=4M && sync

where sdX is your usb device (this can be verified with lsblk).

The sync bit is important as dd can return before the write operation finishes.




Creating a bootable Ubuntu USB flash drive from terminal

    Place the ubuntu.iso file in any hard disk partition.

    Then mount the ubuntu.iso file with the below commands in terminal:

    sudo mkdir /media/iso/
    sudo mount -o loop /path/to/ubuntu.iso /media/iso

    Insert your USB flash drive. My drive is /dev/sdd. Here's a screenshot:

GParted screenshot

    Your drive may be automatically mounted inside /media/. Let's assume that it was mounted in /media/xxx/.

    Copy all files from /media/iso/ to your mounted USB flash drive by running the below command (make sure to include the dot):

    cp -a /media/iso/. /media/xxx/

    Next, you need the ldlinux.sys file in your USB flash drive to make the USB bootable. My USB partition is /dev/sdd1; enter lsblk to see what's yours. Run the below commands:

    sudo apt-get install syslinux mtools
    sudo syslinux -s /dev/sdd1

    Navigate to the /media/xxx mount folder and rename the isolinux directory to syslinux. Then go into the renamed folder and rename the file isolinux.cfg to syslinux.cfg.

    Reboot your PC and change the boot order in BIOS to allow booting from a USB drive. Now your Ubuntu USB flash drive will boot and you can install it.

This method will work for any Linux distribution, not only Ubuntu. You don't need to install any third party software to make a Linux USB flash drive.


