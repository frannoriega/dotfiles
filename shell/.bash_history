pwd
cd /home
killall snap-store
sudo apt update
perl install-tl 
sudo perl install-tl 
sudo apt install build-essential
sudo apt install bc
sudo apt install linux-headers-`uname -r`
sudo apt install git
ls -al ~/.ssh
ssh-keygen -t ed25519 -C "frannoriega.92@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
sudo apt-get install xclip
xclip -selection clipboard < ~/.ssh/id_ed25519.pub
git clone git@github.com:aircrack-ng/rtl8814au.git
cd ..
git clone git@github.com:aircrack-ng/rtl8814au.git
cd rtl8814au/
make
make clean
make dkms_install
sudo make dkms_install
deb http://archive.ubuntu.com/ubuntu/ focal-proposed main
echo "deb http://archive.ubuntu.com/ubuntu/ focal-proposed main" >> /etc/apt/sources.list
sudo echo "deb http://archive.ubuntu.com/ubuntu/ focal-proposed main" >> /etc/apt/sources.list
sudo nano /etc/apt/sources.list
sudo apt-get update
sudo apt-get install dkms
make dkms_install
sudo make dkms_install
sudo sh -c "echo '1' > /sys/module/8814au/parameters/rtw_switch_usb_mode"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install curl
sudo apt-get install vim
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
exit
sudo apt-get update
sudo apt-get install     apt-transport-https     ca-certificates     curl     gnupg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo   "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
source ~/.zshrc 
zsh
echo $0
sudo apt install zsh
chsh -s $(which zsh)
sudo apt-get update -y && sudo apt-get upgrade -y;
sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa
source ~/.zshrc
exit
history
sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa
zsh
exit
nvim Workspace/install.sh 
cd Workspace/
mv install.sh dotfiles/
cd dotfiles/
nvim
cd ..
mkdir dotfiles/polybar
mkdir dotfiles/rofi
mkdir dotfiles/i3
mkdir dotfiles/polybar/.config
mkdir dotfiles/rofi/.config
mkdir dotfiles/i3/.config
mkdir dotfiles/starship
mkdir dotfiles/starship/.config
cp -r ../.config/i3 dotfiles/i3/.config/
cp -r ../.config/polybar dotfiles/polybar/.config/
cp -r ../.config/rofi dotfiles/rofi/.config/
cd dotfiles
stow i3 -t ~ --override
stow i3 -t ~ --override=*.
stow i3 -t ~ --adopt
stow polybar -t ~ --adopt
stow rofi -t ~ --adopt
ls -latr ~/.config
stow --adopt *
ls
mv install.sh ../
stow --adopt *
git restore .
git status
ls -latr ~/.config
rm -rf ~/.config/i3
rm -rf ~/.config/polybar/
rm -rf ~/.config/rofi
stow *
ls -latr ~/.config
stow * -t ~
ls -latr ~/.config
git status
git add .
git commit -m "config: Added config for i3, polybar and rofi
"
git commit --amend
git commit -a
git commit --amend
vim ~/.bashrc
git config --global core.editor "nvim"
git commit --amend
git push
mv ../install.sh ./
ls
git status
git add .
git commit
git push
cd ..
cd basquade/
mkdir keywords
yay -S protonup-qt
yay -S polybar
mkdir ~/.config/polybar
vim ~/.config/polybar/config.ini
vim ~/.config/polybar/mocha.ini
vim ~/.config/polybar/config.ini
polybar
vim ~/.config/polybar/config.ini
polybar
vim ~/.config/polybar/config.ini
polybar
vim ~/.config/polybar/config.ini
vim ~/.config/i3/config 
vim ~/.config/polybar/launch_polybar.sh
vim ~/.config/i3/config 
chmod +x ~/.config/polybar/launch_polybar.sh 
yay -S feh
yay -S rofi
rofi -show
mkdir ~/.config/rofi
vim ~/.config/rofi/config.rasi
vim ~/.config/rofi/catppuccin-mocha.rasi
rofi
rofi -show
vim ~/.config/i3/config 
yay -S nvim
pacman -S nvim
sudo pacman -S nvim
sudo pacman -S neovim
history
yay -S steam
nvim /etc/pacman.conf
sudo nvim /etc/pacman.conf 
pacman -Sy
sudo pacman -Sy
sudo pacman -Sy steam
cd Workspace/
mkdir basquade
cd basquade/
git clone git@github.com:frannoriega/basquade.git
cd basquade/
ls
git branch
git checkout design-test
cp scripts/genesis.py ../keywords/
cd ../keywords/
ls
yay -Sy openoffice-bin
yay -Sy stremio
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cd Workspace/basquade/keywords/
ls
nvim pdfer.sh 
yay -Sy libreoffice-bin
yay -Sy libreoffice-still
sudo su
yay -Sy libreoffice-still
cat .bashrc
zsh
cat .zshrc 
staship init zsh
starship init zsh
eval "$starship init zsh"
eval "$(starship init zsh)"
eval "$(starship init bash)"
exit
nvim .config/polybar/config.ini 
yay -Sy stremio
chsh -s $(which zsh)
exit
