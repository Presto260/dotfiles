# Lines configured by zsh-newuser-install
export PS1=["%2d]%  "

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/preston/.zshrc'

autoload -Uz compinit
compinit
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# End of lines added by compinstall

# Alias
alias ls="ls --color=auto"
alias ll="ls -l --color=tty"
alias pd="sudo pacman -Rns $(pacman -Qdtq)"
