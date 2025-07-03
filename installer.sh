#!/bin/bash

echo "Installing dependencies..."
sudo apt update
sudo apt install -y ddcutil zenity yad

echo "Copying scripts to ~/bin..."
mkdir -p ~/bin
cp brg.sh brightness-tray.sh ~/bin/
chmod +x ~/bin/brg.sh ~/bin/brightness-tray.sh

echo "Adding to PATH if needed..."
if ! grep -q 'export PATH="$HOME/bin:$PATH"' ~/.bashrc; then
  echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
  echo "PATH updated in .bashrc"
fi

echo "Setting up autostart..."
mkdir -p ~/.config/autostart
cp brightness-gui.desktop ~/.config/autostart/

echo "Installation complete!"
echo "You may need to log out and log back in to see the tray icon."
