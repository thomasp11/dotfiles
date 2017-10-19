# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd notify
unsetopt appendhistory beep extendedglob nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tom/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

CASE_SENSITIVE="true"

# Shift-Tab goes back a char
bindkey '^[[Z' reverse-menu-complete

# History settings
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^r' history-incremental-search-backward

# Make auto complete print new prompt
unsetopt ALWAYS_LAST_PROMPT

unsetopt EQUALS

# Make tab completion like bash
setopt noautomenu

source .profile
