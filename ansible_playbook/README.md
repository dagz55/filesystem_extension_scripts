# 🚀 Dynamic Filesystem Extension Playbook 🚀

## 📂 Extend Your Filesystems with Ease! 📂

This Ansible playbook allows you to dynamically extend XFS filesystems on remote hosts. It's interactive, safe, and easy to use!

### 🌟 Features 🌟

- 🖥️ Dynamic host selection
- 📁 Flexible filesystem targeting
- 🔢 User-defined space allocation
- 🛡️ Built-in safety checks
- 📊 Before and after size reporting

### 🛠️ Prerequisites 🛠️

- Ansible installed on your control node
- SSH access to target hosts
- Sudo privileges on target hosts

### 🚀 How to Use 🚀

1. Save the playbook as `extend_fs_dynamic.yml`

2. Run the playbook:
```
ansible-playbook extend_fs_dynamic.yml --become -K --ask-pass -u <your-priveleged-username>
```
3. Follow the prompts:
- 🏠 Enter the target host
- 📂 Specify the filesystem path
- ➕ Input the amount of space to add (in GB) [number only]

### 🔍 What It Does 🔍

1. 🎯 Adds the specified host to the inventory
2. 📊 Checks available space in the volume group
3. 🚫 Fails safely if there's not enough space
4. 📈 Extends the logical volume
5. 🌱 Grows the XFS filesystem
6. 📝 Reports the new filesystem size

### ⚠️ Warning ⚠️

Always ensure you have recent backups before modifying filesystems!

### 🤝 Contributing 🤝

Feel free to fork, modify, and send pull requests. All contributions are welcome!

### 📜 License 📜

This project is licensed under the MIT License - see the LICENSE file for details.

---

📈 Happy Filesystem Extending! 📂
