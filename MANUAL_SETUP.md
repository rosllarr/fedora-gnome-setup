### First install
```bash
sudo dnf install -y git keepassxc
```

### Set keyboard shortcuts
Settings -> Keyboard -> View and Customize Shortcuts
[Launchers]
Home folder = Shift+Super+R
Launch web browser = Shift+Super+F
Settings = Super+`
[Navigation]
Switch to workspace [1..4] = Super+[1..4]
Move window to workspace [1..4] = Shift+Super+[1..4]
[Windows]
Close window = Shift+Super+Q
Maximize window = Super+W
Raise window above other windows = Super+S
Restore window = Super+E
Toggle fullscreen mode = Super+Z
View split on left = Super+A
View split on right = Super+D
[Custom Shortcuts]
keepassxc = Super+Shift+Z

### Enable RPM fusion
```bash
	sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

### Install gnome tools
```bash
sudo dnf install -y dconf-editor gnome-tweaks gstreamer1-plugins-bad-free-extras gstreamer1-plugin-openh264
```

### Tweaks settings
Tweaks -> Windows
[ClickActions]
Resize with Secondary-Click = True
[Focusing]
Focus on Hover = True
Tweaks -> Keyboard
[Additional Layout Options]
Make Caps Lock an additional Esc = True

### Multitasking
Settings -> Multitasking
[General]
Hot Corner = False
[Workspaces]
Fixed number of workerspaces = True
Number of Workspaces = 4
[Multi-Monitor]
Workspaces on all displays

### Touchpad
Settings -> Mouse & Touchpad -> Touchpad
[ScrollDirection]
Traditional = True