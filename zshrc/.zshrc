export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator ssh virtualenv anaconda pyenv os_icon)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

zstyle ':omz:update' mode reminder 
zstyle ':omz:update' frequency 7

ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd/mm/yyyy"

plugins=(
  aliases
  autopep8
  branch
  copybuffer
  docker
  docker-compose
  dotnet
  extract
  git
  gradle-completion
  history
  mvn
  npm
  pip
  poetry
  poetry-env
  ssh-agent
  suse
  systemadmin
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
zstyle :omz:plugins:ssh-agent agent-forwarding yes
zstyle :omz:plugins:ssh-agent helper ksshaskpass
zstyle :omz:plugins:ssh-agent identities
zstyle :omz:plugins:ssh-agent lazy yes

setopt globdots
setopt correct
setopt correctall
setopt histignoredups
setopt histignorespace
setopt noclobber

export JAVA_HOME=~/bin/jdk-21
export PATH=$JAVA_HOME/bin:~/bin/dart-sass/:~/Games/Scripts:~/bin/*.sh:~/bin/jdt-language-server/bin:$PATH

export EDITOR='nvim'

alias ls='ls -A --color=always --group-directories-first'
alias vi=nvim
alias vim=nvim
alias sass='sass --no-source-map'
alias sasswatch='sass --watch'
alias python=python3
alias update_system='sudo ~/bin/update.sh'
alias :q=exit

if command -v bat >/dev/null 2>&1; then
  alias cat=bat
fi

if command -v lsd >/dev/null 2>&1; then
  alias ls='lsd -A'
  alias tree='lsd --tree'
fi

if command -v fastfetch >/dev/null 2>&1; then
  alias neofetch=fastfetch
fi

function yz() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

clear
fastfetch

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
