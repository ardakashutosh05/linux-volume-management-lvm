#!/bin/bash

# 📌 Unmount the LV
echo "Unmounting the Logical Volume..."
sudo umount /mnt/lv_data

# 📌 Run filesystem check
echo "Checking filesystem before reducing..."
sudo e2fsck -f /dev/vg_data/lv_data

# 📌 Resize the filesystem first
echo "Shrinking filesystem to 4G..."
sudo resize2fs /dev/vg_data/lv_data 4G

# 📌 Reduce the LV
echo "Reducing Logical Volume to 4G..."
sudo lvreduce -L 4G /dev/vg_data/lv_data

# 📌 Mount again
sudo mount /dev/vg_data/lv_data /mnt/lv_data

echo "✅ Logical Volume reduced successfully!"

