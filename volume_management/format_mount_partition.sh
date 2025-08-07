#!/bin/bash
# 📂 Script to format and mount a new partition

PARTITION="/dev/xvdf1"  # Update as needed
MOUNT_DIR="/mnt/mydisk"

echo "🧼 Formatting $PARTITION with ext4 filesystem..."
mkfs.ext4 $PARTITION

echo "📁 Creating mount directory at $MOUNT_DIR..."
mkdir -p $MOUNT_DIR

echo "🔗 Mounting $PARTITION to $MOUNT_DIR..."
mount $PARTITION $MOUNT_DIR

echo "✅ Mounted successfully. Run 'df -h' to verify."

