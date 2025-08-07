#!/bin/bash

# 📌 Extend the Logical Volume
echo "Extending Logical Volume lv_data by 2G..."
sudo lvextend -L +2G /dev/vg_data/lv_data

# 📌 Resize the file system
echo "Resizing the filesystem..."
sudo resize2fs /dev/vg_data/lv_data

echo "✅ Logical Volume extended successfully!"

