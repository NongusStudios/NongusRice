# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[cyan]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh/histfile

proj=/mnt/projects
stor=/mnt/storage
usb=/mnt/usb

# aliases
alias ls="ls --color"
alias pacmanclean="sudo pacman -Qtdq | sudo pacman -Rns -"

export PATH=$PATH:$HOME/.local/bin:$HOME/.local/bin/statusbar
#neofetch
