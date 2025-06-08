# ipsweep

**ipsweep** is a lightweight Bash-based network scanning utility designed to quickly identify live hosts in a given subnet. It uses simple `ping` requests to determine if hosts are reachable.

---

## 📌 Features

- 🔎 Fast ICMP-based host discovery
- ⚡ Scans IP range from `.1` to `.254`
- ⏱️ Parallel scanning using background processes
- ✅ Simple and beginner-friendly interface
- 🎨 Stylish ASCII banner

---

## 🧰 Installation

### 🖥️ Prerequisites

- Unix-based system (Linux/macOS/WSL)
- Bash shell
- Utilities: `ping`, `grep`, `cut`, `tr` (usually pre-installed)

### 📥 Clone the Repository

Open your terminal and run the following commands:


# Clone the repository
```bash
git clone https://github.com/monsurhadi/ipsweep.git
```
# Navigate into the project directory
```bash
cd ipsweep
```
# Make the script executable
```bash
chmod +x ipsweep.sh
