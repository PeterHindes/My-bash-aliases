# Edit These or read these out
alias aliase='nano ~/.bash_aliases'
alias aliases='cat ~/.bash_aliases'

# Simple history (no line numbers)
alias hist='cat ~/.bash_history'

# Find how much free space is avalible on the root mounted fs
alias dfree='df -h | head -1 ; df -h | grep "/$"'

# List Joysticks
alias jls='ls /dev/input | grep js'
# List Input Devices
alias ils='ls /dev/input'

# Shorten and mistyped comands
# CLI
alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -l'
alias la='ls -la'
alias disks='fdisk -l'
alias ifconfig='sudo ip addr'
alias no='yes n'
# GUI
alias pamac='pamac-manager &'
# GDM
alias gdm='systemctl start gdm'
alias mdg='systemctl stop gdm'

# Auto Elevate For Common Programs
alias apt-get='sudo apt'
alias pacman='sudo pacman'
alias fdisk='sudo fdisk'
#alias ifconfig='sudo ifconfig'

# Package Managment Simplified
alias updateall='yay -Syu'
alias updateally='yes | yay -Syu'
alias paclean='yes | yay -Sc'
alias install='yay -S'
alias remove='yay -Rndd'
alias key='gpg --recv-keys --keyserver hkp://pgp.mit.edu'
# Needs testing
#alias iyay='yes | sudo pacman -S git && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg && yes | sudo pacman -U *.pkg.tar.gz'

#Terminal Players
alias jukebox='mpsyt'
alias yplayer='youtube-viewer'
alias music='cmus'

# Youtube Aliases
alias ytdl='youtube-dl -i --no-playlist'
alias ytmp3='ytdl --extract-audio --audio-format mp3 -o "1 - %(title)s.%(ext)s"'
alias ytpl='ytdl --yes-playlist -o "%(playlist_index)s - %(title)s.%(ext)s"'
alias ytmpl='ytdl --extract-audio --audio-format mp3 --yes-playlist -o "%(playlist_index)s - %(title)s.%(ext)s"'

# Toggle Trackpad Under Gnome
tracktog() {
	if [[ $(dconf read /org/gnome/desktop/peripherals/touchpad/send-events) == "'disabled'" ]]; then
		echo Turning TP Off
		dconf write /org/gnome/desktop/peripherals/touchpad/send-events "'enabled'"
	else
		echo Turning TP On
		dconf write /org/gnome/desktop/peripherals/touchpad/send-events "'disabled'"
	fi
}

# Toggle Lid Sleeping
lidtog() {
	if [ ! -f ~/.config/autostart/ignore-lid-switch-tweak.desktop ]; then
		echo Turning LS Off
		echo "[Desktop Entry]" > ~/.config/autostart/ignore-lid-switch-tweak.desktop
		echo "Type=Application" >> ~/.config/autostart/ignore-lid-switch-tweak.desktop
		echo "Name=ignore-lid-switch-tweak" >> ~/.config/autostart/ignore-lid-switch-tweak.desktop
		echo "Exec=/usr/lib/gnome-tweak-tool-lid-inhibitor" >> ~/.config/autostart/ignore-lid-switch-tweak.desktop
	else
		echo Turning LS On
		rm ~/.config/autostart/ignore-lid-switch-tweak.desktop
	fi
}
