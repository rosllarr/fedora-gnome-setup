### Enable RPM fusion
```bash
	sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    sudo dnf install -y dnf-plugins-core
```

### Install nessaries software and gnome tools
```bash
sudo dnf install -y git keepassxc dconf-editor gnome-tweaks gstreamer1-plugins-bad-free-extras gstreamer1-plugin-openh264
```

### Set keyboard shortcuts
Navigate to [Settings->Keyboard->"View and Customize Shortcuts"]
```toml
[Launchers]
Home_folder = Shift+Super+R
Launch_web_browser = Shift+Super+F
Settings = Super+`
[Navigation]
Switch_to_workspace_1-4 = Super+[1..4]
Move_window_to_workspace_1-4 = Shift+Super+[1..4]
[Windows]
Close_window = Shift+Super+Q
Maximize_window = Super+W
Raise_window_above_other_windows = Super+S
Lower_window_below_other_windows = Super+Q
Restore_window = Super+E
Toggle_fullscreen_mode = Super+Z
View_split_on_left = Super+A
View_split_on_right = Super+D
[Custom Shortcuts]
keepassxc = Super+Shift+Z
alacritty = Super+Return
google-chrome = Super+Shift+G
telegram-desktop = Super+Shift+B
[System]
logscreen = Super+Shift+/
```

### Set mouse behavor
Navigate to [Tweaks -> Windows]
```toml
[ClickActions]
Resize_with_Secondary-Click = True
[Focusing]
Focus_on_Hover = True
```

### Set touchpad behavor
Navigate to 
[Settings -> Mouse & Touchpad -> Touchpad]
```toml
[ScrollDirection]
Traditional = True
```

### Make capslock as additional Esc
Navigate to [Tweaks -> Keyboard]
```toml
[Additional Layout Options]
Make_Caps_Lock_an_additional_Esc = True
```

### Set window and workspace behavor
Navigate to [Settings -> Multitasking]
```toml
[General]
Hot_Corner = False
[Workspaces]
Fixed_number_of_workerspaces = True
Number_of_Workspaces = 4
[Multi-Monitor]
Workspaces_on_all_displays = True
```

### Setup shell
```bash
# add alacritty repo
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/shells:fish/Fedora_39/shells:fish.repo
sudo dnf copr enable atim/alacritty -y

# install nessary softwares 
sudo dnf install -y alacritty fish tmux cargo

# install rust terminal utility
cargo install bat eza ripgrep zoxide fnm
cargo install joshuto --version 0.9.4

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
bash ~/.fzf/install

# copy config file
mkdir -p ~/.config/{alacritty,discord,fish}
cp -a home/skel/.config/alacritty ~/.config/
cp -a home/skel/.config/discord ~/.config/
cp -a home/skel/.config/fish ~/.config/
cp home/skel/.bashrc ~
cp home/skel/.node-version ~
cp home/skel/.tmux.conf ~

# [start alacritty]
# run follow commands
#
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

### Install tools for make a project
```bash
# tool for make environments
sudo dnf install -y @c-development @fonts @virtualization vagrant python3-pip python3-devel

# ghcup for haskell project
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

### Install utilities software
```bash
sudo dnf install foliate btop youtube-dl tuxguitar vlc -y
```

### Install tools for work
```bash
# enable google-chrome repo
sudo dnf install fedora-workstation-repositories -y
sudo dnf config-manager --set-enabled google-chrome

# install nessary softwares
sudo dnf install -y google-chrome-stable telegram, openfortivpn
```

### Reboot the system
```bash
reboot
```