export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="crcandy"

zstyle ':omz:update' mode reminder 
zstyle ':omz:update' frequency 7

# DISABLE_AUTO_TITLE="true"
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
    gpg-agent 
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
alias java8=~/bin/openlogic-openjdk-jre-8u392-b08-linux-x64/bin/java
alias update_system='sudo ~/bin/update.sh'
alias java8="~/bin/jdk-8/bin/java"
alias javac8="~/bin/jdk-8/bin/javac"
alias java19="~/bin/jdk-19.0.1/bin/java"
alias javac19="~/bin/jdk-19.0.1/bin/javac"
alias :q=exit
