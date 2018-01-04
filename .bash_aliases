alias aliass='sudo nano ~/.bash_aliases'
alias aliasses='cat ~/.bash_aliases'

alias hist='cat ~/.bash_history'

alias dfree='df -h | head -1 ; df -h | grep sda2'

alias ls='ls --color=auto'
alias l='ls'
alias disks='fdisk -l'

alias pacman='sudo pacman'
alias fdisk='sudo fdisk'
alias ifconfig='sudo ifconfig'

alias no='yes n'

alias updateall='pacman -Syu && pacaur -ku' # && pacman -Sc && pacaur -Sc'
alias updateally='yes | pacman -Syu && yes| pacaur -ku --noedit'
alias paclean='yes | pacman -Sc && yes | pacaur -Sc'

alias pamac='pamac-manager &'
alias install='pacman -S'
alias remove='pacman -Rn'
alias aurinstall='pacaur -dmy'
alias key='gpg --recv-keys --keyserver hkp://pgp.mit.edu'

alias jukebox='mpsyt'
alias yplayer='youtube-viewer'

alias ytdl='youtube-dl'
alias ytmp3='ytdl --extract-audio --audio-format mp3 -o "1 - %(title)s.%(ext)s"'
alias ytpl='ytdl --yes-playlist -o "%(playlist_index)s - %(title)s.%(ext)s"'
alias ytmpl='ytdl --extract-audio --audio-format mp3 --yes-playlist -o "%(playlist_index)s - %(title)s.%(ext)s"'

aget() {
	wget $1 -O "Album Art.webp" && convert "Album Art.webp" "Album Art.png" && rm "Album Art.webp" && echo Done
}

ahole() {
	albumfoldername=Album
	mkdir $albumfoldername && cd $albumfoldername
	wget $1 -O "Album Art.webp" && convert "Album Art.webp" "Album Art.png" && rm "Album Art.webp"
	youtube-dl --extract-audio --audio-format mp3 --yes-playlist -o "%(playlist_index)s - %(title)s.%(ext)s" $2
}

apt-get() {
    if [[ $@ == "install" ]]; then
        command pacman -S
    else
        command echo Not Assigned
    fi
}
alias apt-get='sudo apt-get'

tracktog() {
	if [[ $(dconf read /org/gnome/desktop/peripherals/touchpad/send-events) == "'disabled'" ]]; then
		dconf write /org/gnome/desktop/peripherals/touchpad/send-events "'enabled'"
	else
		dconf write /org/gnome/desktop/peripherals/touchpad/send-events "'disabled'"
	fi
}
