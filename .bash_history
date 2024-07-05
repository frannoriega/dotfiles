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
