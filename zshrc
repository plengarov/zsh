# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/plengarov/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Oh-my-zsh config
export ZSH="/home/plengarov/.oh-my-zsh"

plugins=(
    git
    docker
    dnf
    lein
    z
)

source $ZSH/oh-my-zsh.sh
# End of Oh-my-zsh config

# Custom config
PROMPT='[%n@%m %~]$ '

alias ls='ls --color=auto -F'
alias la='ls -la'
alias ll='ls -l'
alias e='emacsclient -t'
alias ke="emacsclient -e '(kill-emacs)'"

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
# End of custom config
