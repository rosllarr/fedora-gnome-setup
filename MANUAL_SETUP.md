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
Lower window below other windows = Super+Q
Restore window = Super+E
Toggle fullscreen mode = Super+Z
View split on left = Super+A
View split on right = Super+D
[Custom Shortcuts]
keepassxc = Super+Shift+Z
alacritty = Super+Return

### Enable RPM fusion
```bash
	sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    sudo dnf install -y dnf-plugins-core
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

### Setup shell
```bash
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/shells:fish/Fedora_39/shells:fish.repo
sudo dnf copr enable atim/alacritty -y

sudo dnf install -y alacritty fish tmux cargo

cargo install bat eza ripgrep zoxide fnm
cargo install joshuto --version 0.9.4

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
bash ~/.fzf/install
```

### Install tools for make a project
```bash
sudo dnf install -y @c-development @fonts @virtualization vagrant python3-pip python3-devel
```

### Start alacritty
```bash
# install oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# install plugins
omf install bang-bang
omf install clearance
```

### Install nerd fonts
```bash
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/.nerd-fonts
bash ~/.nerd-fonts/install.sh
```

### Install utilities software
```bash
sudo dnf install foliate btop youtube-dl tuxguitar -y
```

### Reboot
```bash
reboot
```