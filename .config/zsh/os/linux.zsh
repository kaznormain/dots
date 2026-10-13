alias o='xdg-open'
if [[ -n $WAYLAND_DISPLAY ]]; then
  alias clip='wl-copy'
else
  alias clip='xclip -selection clipboard'
fi

clup() {
    sudo pacman -Sc --noconfirm
    if [ -n "$(pacman -Qtdq)" ]; then
        sudo pacman -Rns $(pacman -Qtdq)
    fi
}

alias up="sudo pacman -Syu"
alias inst="sudo pacman -S"
alias unin="sudo pacman -Rns"
alias search="pacman -Ss"
alias info="pacman -Si"
alias list="pacman -Q"
