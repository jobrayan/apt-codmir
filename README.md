# Codmir APT Repository

Ubuntu/Debian package repository for Codmir Desktop.

## Install Codmir

```bash
# One-liner
curl -fsSL https://jobrayan.github.io/apt-codmir/install.sh | bash

# Or manually:
curl -fsSL https://jobrayan.github.io/apt-codmir/gpg | sudo gpg --dearmor -o /usr/share/keyrings/codmir.gpg
echo "deb [signed-by=/usr/share/keyrings/codmir.gpg] https://jobrayan.github.io/apt-codmir stable main" | sudo tee /etc/apt/sources.list.d/codmir.list
sudo apt update
sudo apt install codmir
```

## Update

```bash
sudo apt update && sudo apt upgrade codmir
```

## Uninstall

```bash
sudo apt remove codmir
sudo rm /etc/apt/sources.list.d/codmir.list
sudo rm /usr/share/keyrings/codmir.gpg
```
