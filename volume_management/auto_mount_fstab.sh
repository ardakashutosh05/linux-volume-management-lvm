#!/bin/bash
# 🔧 Script to set auto-mount entry in /etc/fstab

PARTITION="/dev/xvdf1"
MOUNT_DIR="/mnt/mydisk"
FSTAB_LINE="$PARTITION  $MOUNT_DIR  ext4  defaults  0  2"

echo "📝 Adding entry to /etc/fstab..."
echo "$FSTAB_LINE" | sudo tee -a /etc/fstab

echo "📂 Mounting all from /etc/fstab..."
sudo mount -a

echo "✅ Auto-mount setup complete. Check using 'df -h'."

