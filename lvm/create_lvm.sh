#!/bin/bash

# 📌 Create Physical Volumes
echo "Creating Physical Volume..."
sudo pvcreate /dev/sdb1 /dev/sdc1

# 📌 Create Volume Group
echo "Creating Volume Group named vg_data..."
sudo vgcreate vg_data /dev/sdb1 /dev/sdc1

# 📌 Create Logical Volume
echo "Creating Logical Volume lv_data of size 5G..."
sudo lvcreate -L 5G -n lv_data vg_data

# 📌 Format and mount
echo "Formatting LV with ext4..."
sudo mkfs.ext4 /dev/vg_data/lv_data

echo "Mounting to /mnt/lv_data..."
sudo mkdir -p /mnt/lv_data
sudo mount /dev/vg_data/lv_data /mnt/lv_data

echo "✅ LVM created and mounted successfully!"

