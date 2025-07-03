# brightness-gui

A minimal brightness control utility for Linux desktop users with external monitors that support DDC/CI.  
It provides a simple graphical slider using zenity, and integrates a tray icon with yad for quick access.  
The tool detects current brightness and allows real-time adjustment without needing root access interactively.

---

## Features

- Detects and displays current monitor brightness
- Adjusts brightness via GUI slider (zenity)
- Tray icon with custom menu (yad)
- Can autostart on login
- Lightweight and works across most desktop environments (GNOME, XFCE, KDE, etc.)

## Requirements

Make sure these packages are installed:

- git (if cloning the repository via git clone)
- ddcutil (controls brightness)
- zenity (for GUI slider)
- yad (for tray icon)


## Install Depedencies (Debian/Ubuntu)
```bash
sudo apt update
sudo apt install git
```

## Installation
```bash
git clone https://github.com/tosrv/brightness-gui.git
cd brightness-gui
chmod +x installer.sh
./installer.sh
```

To allow your user account to access the monitor hardware, add yourself to the i2c group:
```bash
sudo adduser $USER i2c
```
Replace `$USER` with your actual username

## Usage
Run the brightness control GUI:
```bash
brg.sh
```

## Reboot your system to apply all changes and see the tray icon appear.

## License
This project is licensed under the [MIT License](LICENSE).
