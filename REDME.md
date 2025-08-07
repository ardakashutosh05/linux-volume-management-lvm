
# 🧱 Linux Volume Management & Logical Volume Manager (LVM)

This project provides shell scripts for managing volumes in Linux, including both basic partitioning and advanced Logical Volume Manager (LVM) operations. It includes tools to create, extend, reduce, and remove logical volumes, as well as scripts for formatting and automounting partitions.

---

## 📁 Project Structure

```
linux-volume-management-lvm/
│
├── volume_management/               # Basic disk partition & mounting scripts
│   ├── create_partition.sh
│   ├── format_mount_partition.sh
│   └── auto_mount_fstab.sh
│
├── lvm/                             # LVM-related shell scripts
│   ├── create_lvm.sh
│   ├── extend_lvm.sh
│   ├── reduce_lvm.sh
│   └── remove_lvm.sh
│
├── diagrams/                        # Visual diagrams
│   ├── lvm_structure.png
│   └── partition_vs_lvm.png
│
└── README.md                        # Project documentation
```

---

## 🧰 Volume Management Scripts

The `volume_management/` folder contains scripts for managing basic disk partitions:

1. **`create_partition.sh`** – Creates a new disk partition using `fdisk`
2. **`format_mount_partition.sh`** – Formats the partition (e.g., to ext4) and mounts it
3. **`auto_mount_fstab.sh`** – Configures the system to auto-mount the partition via `/etc/fstab`

---

## 🧱 LVM Management Scripts

The `lvm/` folder includes scripts to handle Logical Volume Management:

1. **`create_lvm.sh`**  
   - Creates Physical Volume (PV), Volume Group (VG), and Logical Volume (LV)

2. **`extend_lvm.sh`**  
   - Extends the size of an LV and resizes the file system (`lvextend`, `resize2fs`)

3. **`reduce_lvm.sh`**  
   - Reduces the size of an LV (includes unmounting, backup, and resize steps)

4. **`remove_lvm.sh`**  
   - Safely removes the Logical Volume, Volume Group, and Physical Volume

---

## 🖼 Diagrams

The `diagrams/` folder includes visual aids to help understand volume concepts:

- **`lvm_structure.png`** – Logical Volume Manager architecture and workflow
- **`partition_vs_lvm.png`** – Comparison between Traditional Partitioning and LVM

---

## 🧪 How to Use

1. Open your Linux terminal.
2. Make scripts executable:

```bash
chmod +x *.sh
```

3. Run the desired script (e.g., to create LVM):

```bash
sudo ./create_lvm.sh
```

> ⚠️ **Note:** Make sure `sudo` permissions are enabled. In WSL (Windows Subsystem for Linux), enable `sudo` from Developer Settings if needed.

---

## 🪪 License

This project is licensed under the **MIT License** — free for personal and commercial use.

---

## 🙋 Author

Created by **Ashutosh Ardak**  
Feel free to connect or contribute to improve this project.
