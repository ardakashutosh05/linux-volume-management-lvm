#!/bin/bash
# 📦 Script to create a new disk partition using fdisk

DEVICE="/dev/xvdf"  # Change this to your unmounted disk
echo "🧱 Creating new partition on $DEVICE"

(
echo n    # Add new partition
echo p    # Primary partition
echo 1    # Partition number
echo      # Default - start at beginning of disk
echo      # Default - extend to end of disk
echo w    # Write changes
) | fdisk $DEVICE

echo "✅ Partition created. Run 'lsblk' to verify."

