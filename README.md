# Installing Node.js on Ubuntu (WSL)

This guide explains how to install **Node.js** on **Ubuntu running in Windows Subsystem for Linux (WSL)**.

---

## 📦 Method 1: Install via NodeSource (Recommended for LTS)

Install the latest **LTS** version of Node.js using the official NodeSource setup script.

### Steps

```bash
# Update the package index
sudo apt update

# Install curl (if not already installed)
sudo apt install curl -y

# Download and run NodeSource setup script for Node.js 20.x
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

# Install Node.js and npm
sudo apt install -y nodejs

# Verify installation
node -v
npm -v
````

---

## 🔁 Method 2: Install via NVM (Node Version Manager)

Use `nvm` to manage multiple Node.js versions easily.

### Steps

```bash
# Update the package index
sudo apt update
sudo apt install curl -y

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Activate nvm (also add this to your ~/.bashrc or ~/.zshrc)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install latest LTS version of Node.js
nvm install --lts

# Verify installation
node -v
npm -v
```

---

## ✅ Test the Installation

Create a test file and run it:

```bash
echo 'console.log("Node is working!")' > test.js
node test.js
```

---

## 🎯 Next Steps

* Install [Yarn](https://classic.yarnpkg.com/lang/en/docs/install/#debian-stable) (optional)
* Start a project with [Next.js](https://nextjs.org/docs/getting-started) or [Express.js](https://expressjs.com/)
* Use `nvm` to switch between Node.js versions

---

## 🛠️ Troubleshooting

* If `nvm` is not recognized, restart the terminal or run:

  ```bash
  source ~/.bashrc
  ```

---
