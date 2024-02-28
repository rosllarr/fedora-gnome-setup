### Install vscode
```bash
# download from https://code.visualstudio.com/download

# install with 
rpm -ivh code-*.rpm

# import profile from vscode_profile/base.code-profile
```

### Enable RPM fusion
```bash
	sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    sudo dnf install -y dnf-plugins-core
```

### Setup flathub
```bash
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo --user
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
Move_window_to_workspace_1-4 = Shift+Super+[1..4]
Switch_applications = Super+Tab
Switch_to_workspace_1-4 = Super+[1..4]
Switch_windows_of_an_application = Alt+Tab
[System]
logscreen = Super+Shift+/
[Windows]
Close_window = Shift+Super+Q
Hide_window = Super+Q
Maximize_window = Super+W
Restore_window = Super+S
Toggle_fullscreen_mode = Super+Z
View_split_on_left = Super+A
View_split_on_right = Super+D
[Custom Shortcuts]
keepassxc = Super+Shift+Z
alacritty = Super+Return
google-chrome = Super+Shift+G
Insomnia = flatpak run rest.insomnia.Insomnia = Super+Shift+C
telegram-desktop = flatpak run org.telegram.desktop = Super+Shift+B
gnome-tweaks = Super+Shift+`
```

### Additional step for press grave key without FN (on 60% keyboard)
```bash
# copy custom keycode
cp -a home/skel/.config/xkb $HOME/.config/
```
Navigate to [Tweaks->Keyboard->"Additional Layout Options"]
```toml
[Miscellaneous_options]
Esc_to_grave = True
```

### Make capslock as additional Esc
Navigate to [Tweaks -> Keyboard]
```toml
[Additional Layout Options]
Make_Caps_Lock_an_additional_Esc = True
```

### Set mouse behavor
Navigate to [Tweaks -> Windows]
```toml
[ClickActions]
Resize_with_Secondary-Click = True
[Focusing]
Click to Focus = True
```

### Set touchpad behavor
Navigate to 
[Settings -> Mouse & Touchpad -> Touchpad]
```toml
[Clicking]
Tap_to_Click = True
[ScrollDirection]
Traditional = True
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

### Remove switch workspace left/right for prevent duplicate key with vscode
```bash
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['']"
```

### Setup shell
```bash
# add alacritty repo
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/shells:fish/Fedora_39/shells:fish.repo
sudo dnf copr enable atim/alacritty -y

# install nessary softwares 
sudo dnf install -y alacritty fish tmux cargo neovim

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
cp -a home/skel/.config/fish/functions/* ~/.config/fish/functions/
cp -a home/skel/.config/fish/config.fish ~/.config/fish/
cp -a home/skel/.config/fish/fish_variables ~/.config/fish/
cp home/skel/.bashrc ~
cp home/skel/.node-version ~
cp home/skel/.tmux.conf ~

# clone alacritty themes
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

# [start alacritty]
# run follow commands
#
# install oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# install plugins
omf install bang-bang
omf install clearance

# install fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
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

# install ghci dep package
sudo dnf install -y gmp-devel
# ghcup for haskell project
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
# integrate haskell with fish shell
fisher install halostatue/fish-haskell@v2.1.0
```

### Install utilities software
```bash
sudo dnf install -y foliate btop youtube-dl tuxguitar vlc xev wev
```

### Install tools for work
```bash
# enable google-chrome repo
sudo dnf install fedora-workstation-repositories -y
sudo dnf config-manager --set-enabled google-chrome

# install nessary softwares
sudo dnf install -y google-chrome-stable openfortivpn

# install telegram
flatpak install flathub org.telegram.desktop --user

# install Insomnia
flatpak install flathub rest.insomnia.Insomnia
```

### copy script to /usr/local/bin
```bash
sudo cp -a etc/skel/usr/local/bin/* /usr/local/bin/
```

### disable beep
```bash
sudo cp etc/skel/systemd/system/disable-pcspkr.service /etc/systemd/system/disable-pcspkr.service
sudo systemctl enable --now disable-pcspkr.service
```

### Reboot the system
```bash
reboot
```