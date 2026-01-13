#!/bin/bash
# Codmir Desktop Installation Script
# Users run: curl -fsSL https://apt.codmir.com/install.sh | bash

set -e

APT_REPO_URL="${APT_REPO_URL:-https://jobrayan.github.io/apt-codmir}"

echo "=== Installing Codmir Desktop ==="
echo ""

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    SUDO="sudo"
else
    SUDO=""
fi

# Step 1: Add GPG key
echo "[1/3] Adding GPG key..."
curl -fsSL "$APT_REPO_URL/gpg" | $SUDO gpg --dearmor -o /usr/share/keyrings/codmir.gpg

# Step 2: Add repository
echo "[2/3] Adding repository..."
echo "deb [signed-by=/usr/share/keyrings/codmir.gpg] $APT_REPO_URL stable main" | \
    $SUDO tee /etc/apt/sources.list.d/codmir.list > /dev/null

# Step 3: Install
echo "[3/3] Installing Codmir..."
$SUDO apt update
$SUDO apt install -y codmir

echo ""
echo "=== Installation Complete ==="
echo "Run 'codmir' or find it in your applications menu."
echo ""
