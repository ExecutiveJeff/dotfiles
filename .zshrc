# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(git tmux last-working-dir)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux last-working-dir)

# User configuration

  export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/home/ntovik/.local/bin:/home/ntovik/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
setopt interactivecomments
setopt ignoreeof
setopt correctall
setopt globdots
source $HOME/.bash_aliases
#if ([[ -z "$TMUX" && -n "$SSH_CONNECTION" ]]); then /usr/bin/tmux attach || /usr/bin/tmux new; fi
alias update="brew update"
alias reload="source ~/.zshrc"
alias seclogs="tailf /var/log/secure | ccze"
alias phonehome="~/scripts/phonehome.sh"
alias homecp="scp root@73.70.232.41:/"
alias odoove=". ~/odoo-env/bin/activate"
#alias rules="/etc/oinkmaster/oinkmaster.pl -C /etc/oinkmaster/oinkmaster.conf -o /etc/suricata/rules"
#alias suri="suricata -D -c /etc/suricata/suricata.yaml -i eno16777736"

export PGDATA='/usr/local/var/postgres'
export PGHOST=localhost
alias start-pg='pg_ctl -l $PGDATA/server.log start'
alias stop-pg='pg_ctl stop -m fast'
alias show-pg-status='pg_ctl status'
alias restart-pg='pg_ctl reload'
alias fixpy='autopep8 --in-place --aggressive $1'
alias tavern='~/scripts/sshme.sh'
alias oakland='cd ~/Desktop/oakland.com/cbmp/'
alias staging='ssh ntovik@cbm-staging'
alias syncup='~/scripts/ksync.sh'
alias oakdb='mysql -uroot -p TBcq5zUr4fJV'
alias clearcache='sudo killall -HUP mDNSResponder'
alias wwwroot='cd /Library/WebServer/Documents/'
alias rip="~/scripts/siteripper.sh"
alias composer="php /usr/local/bin/composer.phar"
