#!/bin/bash

set -e

echo "Choose installation method:"
echo "1) NodeSource (LTS - system-wide)"
echo "2) NVM (Node Version Manager - user scoped)"
read -p "Enter choice [1 or 2]: " choice

install_nodesource() {
  echo "Installing Node.js via NodeSource..."
  sudo apt update
  sudo apt install curl -y
  curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
  sudo apt install -y nodejs
  echo "✅ Node.js and npm installed via NodeSource."
  node -v
  npm -v
}

install_nvm() {
  echo "Installing Node.js via nvm..."
  sudo apt update
  sudo apt install curl -y
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  nvm install --lts
  echo "✅ Node.js and npm installed via nvm."
  node -v
  npm -v
}

case "$choice" in
  1) install_nodesource ;;
  2) install_nvm ;;
  *) echo "❌ Invalid choice. Please run the script again and choose 1 or 2."; exit 1 ;;
esac
