export XDG_CACHE_HOME="$HOME/.cache/"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share/"

export EDITOR="nvim"
export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export LESS=' - R '
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export VISUAL="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=5000
export HIST_STAMPS="dd/mm/yyyy"
export SAVEHIST=5000

export PATH="$HOME/flutter/bin/:$HOME/.local/share/JetBrains/Toolbox/scripts/:$PATH"

