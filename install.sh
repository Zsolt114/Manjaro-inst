# Upgrade all

sudo pacman -Syyu;

# Install official packages

sudo pacman -S --noconfirm mysql pidgin plank openssh  wine tk libreoffice-fresh nethogs python-pip docker;
sudo pacman -S --noconfirm vim synapse samba pamac-gtk steam;
sudo pacman -S --noconfirm lutris;
sudo pacman -S --noconfirm discord;
sudo pacman -S --noconfirm obs-studio;
sudo pacman -S --noconfirm virtualbox;
sudo pacman -S --noconfirm easyeffects;
sudo pacman -S --noconfirm winetricks;
sudo pacman -S --noconfirm make;
sudo pacman -S --noconfirm archlinux-keyring qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat;

# Install AUR

sudo pamac install --no-confirm vivaldi vivaldi-ffmpeg-codecs flatpak libpamac-flatpak-plugin;

# Install Flatpak

sudo flatpak install --noninteractive bottles;

# Install Garuda Package Repository

sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com;
sudo pacman-key --lsign-key FBA220DFC880C036;
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst';
sudo -- sh -c "echo '[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist' >> /etc/pacman.conf";
# Install Garuda Install

cd;
mkdir git;
cd git;
git clone https://gitlab.com/garuda-linux/applications/garuda-gamer.git;
git clone https://gitlab.com/garuda-linux/applications/garuda-libs.git;
sudo pacman -S --noconfirm alacritty-git;
sudo pacman -S --noconfirm expect;
cd garuda-libs;
makepkg;
sudo pacman -U --noconfirm garuda-libs*any.pkg*;
cd ..;
cd garuda-gamer;
makepkg;
sudo pacman -U --noconfirm garuda-gamer*any.pkg*;
