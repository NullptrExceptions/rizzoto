# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#Enviroment variables
export MAKEFLAGS="-j$(nproc)"
export JAVA_HOME="/usr/lib/jvm/default"
export _JAVA_AWT_WM_NONREPARENTING=1
export PATH="$HOME/.local/bin/statusbar/:$JAVA_HOME/bin:$PATH"

#prompt
export PROMPT="%F{green}%n@%m %d $%f"

#Aliases
alias ls="ls -la --color=auto"
