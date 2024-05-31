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
  branch
  docker
  docker-compose
  dotnet
  gradle-completion
  fzf-tab
  mvn
  npm
  pip
  poetry
  poetry-env
  ssh-agent
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
source $ZSH/oh-my-zsh.sh
source $HOME/.aliases.sh

export PATH=$JAVA_HOME/bin:/bin:~/bin/dart-sass:~/bin/jdt-language-server/bin:$PATH

setopt globdots
setopt correct
setopt correctall
setopt noclobber

# History config
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

export EDITOR='nvim'

function yz() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

clear
fastfetch

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
