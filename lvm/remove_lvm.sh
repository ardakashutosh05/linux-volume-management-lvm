#!/bin/bash

# 📌 Unmount and remove Logical Volume
echo "Unmounting and removing LV..."
sudo umount /mnt/lv_data
sudo lvremove -y /dev/vg_data/lv_data

# 📌 Remove Volume Group
echo "Removing Volume Group..."
sudo vgremove -y vg_data

# 📌 Remove Physical Volumes
echo "Removing Physical Volumes..."
sudo pvremove -y /dev/sdb1 /dev/sdc1

echo "✅ LVM removed completely."

