if [ "$EUID" -ne 0]
  then echo "Please run with sudo"
  exit
fi

# Install essentials
# Make sure git is installed
pacman -S --needed git base-devel

## YAY
git clone https://aur.archlinux.org/yay-bin.git
pushd yay-bin/
makepkg -si
popd
rm -rf yay-bin

## GNU Stow
yay -S stow

## dotfiles
git clone https://github.com/frannoriega/dotfiles.git
pushd dotfiles
stow nvim -t ~
stow tmux -t ~
stow shell -t ~
stow polybar -t ~
stow i3 -t ~
stow rofi -t ~


## Nerd fonts
yay -S ttf-hack-nerd

## Picom
sudo pacman -S libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev meson ninja-build uthash-dev
yay -S picom

## WezTerm
yay -S wezterm

## Audio control
yay -S pavucontrol

# Install applications
## Brave
yay -S brave
