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
sudo pacman -S --noconfirm archlinux-keyring qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat;


sudo pamac install vivaldi vivaldi-ffmpeg-codecs flatpak libpamac-flatpak-plugin;

sudo flatpak install bottles;
