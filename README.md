# 🌙 kali-linux-Neovim-config-

This is my custom Neovim configuration tailored for Kali Linux, built entirely using Lua for a fast, modern, and efficient development environment.

---

## 🚀 How I Configured It

### 1. Environment Setup
* Updated the Kali Linux package repositories to ensure system stability.
* Installed the latest stable version of Neovim via the terminal:
```bash
sudo apt update && sudo apt install neovim -y
Here is the suggested, clean `README.md` text in English. You can use this to explain your configuration process clearly to anyone visiting your repository.

---

### Suggested README.md Content

```markdown
# 🌙 kali-linux-Neovim-config-

This is my custom Neovim configuration tailored for Kali Linux, built entirely using Lua for a fast, modern, and efficient development environment.

---

## 🚀 How I Configured It

### 1. Environment Setup
* Updated the Kali Linux package repositories to ensure system stability.
* Installed the latest stable version of Neovim via the terminal:
```bash
sudo apt update && sudo apt install neovim -y

```

### 2. Directory Structure

* Created the standard Neovim configuration directory to house the configuration files:

```bash
mkdir -p ~/.config/nvim

```

* Initialized the configuration using an `init.lua` entry point rather than the old `init.vim` format, keeping the environment modular, fast, and entirely scriptable in Lua.

### 3. Package Management & Features

* Integrated a modern Lua-based plugin manager (like `lazy.nvim`) to easily handle syntax highlighting, autocompletion, and custom themes.
* Fine-tuned keymaps and options specifically optimized for navigation inside a Linux terminal environment.

---

## 🛠️ How to Use This Config

If you want to deploy this exact setup on your own machine, back up your existing configuration and clone this repository directly into your config directory:

```bash
# Backup existing config if any
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null

# Clone this repository
git clone [https://github.com/LOKI29yo17/kali-linux-Neovim-config-.git](https://github.com/LOKI29yo17/kali-linux-Neovim-config-.git) ~/.config/nvim

```

```

---












