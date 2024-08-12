# 🚀 XFS Filesystem Extender Script 🚀

## 📂 Effortlessly Extend Your Logical Volumes and XFS Filesystems! 📂

This bash script provides a quick and safe way to extend logical volumes and their corresponding XFS filesystems. It's designed for simplicity and includes built-in safety checks.

### 🌟 Features 🌟

- 🔍 Automatic volume group detection
- 🛡️ Pre-extension space verification
- 📏 Flexible space allocation
- 🔄 Automatic filesystem resizing
- 📊 Clear success reporting

### 🛠️ Prerequisites 🛠️

- Bash shell
- sudo privileges
- LVM2 tools installed
- XFS tools installed

### 🚀 How to Use 🚀

1. Save the script as `extend_xfs.sh`

2. Make it executable:
```
chmod +x extend_xfs.sh
```
3. Run the script:
```
sudo ./extend_xfs.sh <LV Path> <Space to Extend in GB>
```
or
```
./extend_xfs.sh
```
both commands should work

### 🔍 What It Does 🔍

1. 🎯 Verifies correct usage
2. 🔢 Extracts volume group name
3. 📊 Checks available space
4. 🚫 Exits if there's insufficient space
5. 📈 Extends the logical volume
6. 🌱 Grows the XFS filesystem
7. 📝 Reports successful extension

### ⚠️ Warning ⚠️

Always ensure you have recent backups before modifying filesystems!

### 🐛 Troubleshooting 🐛

- If you encounter "command not found" errors, ensure LVM2 and XFS tools are installed.
- For "permission denied" errors, make sure you're running the script with sudo.

### 🤝 Contributing 🤝

Feel free to fork, modify, and send pull requests. All contributions are welcome!

### 📜 License 📜

This script is licensed under the MIT License - see the LICENSE file for details.

---

Good luck with Filesystem Extending! 

God Bless! 🙏
