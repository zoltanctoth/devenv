# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="$PATH:/opt/local/bin:/opt/local/sbin:/Users/zoltanctoth/.rvm/gems/ruby-1.9.3-p194/bin:/Users/zoltanctoth/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/zoltanctoth/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/zoltanctoth/.rvm/bin:/usr/local/heroku/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/local/mysql-5.5.13-osx10.6-x86_64/bin:/Users/zoltanctoth/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/go/bin:/usr/local/MacGPG2/bin;/usr/local/sbin:/Users/zoltanctoth/app/hive/bin:/Users/zoltanctoth/src/etl/bin:/Users/zoltanctoth/bin:/Users/zoltanctoth/.prezi/simply:/Users/zoltanctoth/src/emr-client-tools"

source ~/.bash_local

