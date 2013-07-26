# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# your project folder that we can `c [tab]` to
export PROJECTS=~/projects

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#Aliases
alias c='clear'
alias clone='git clone'

alias pypi='python setup.py sdist bdist_wininst upload'
#django related alias
ZSH_THEME="lambda"
alias serve='python manage.py runserver'
alias syncdb='python manage.py syncdb'
alias deploy='gondor deploy test HEAD'
alias cstatic='gondor run test python manage.py collectstatic'
alias migrate='python manage.py migrate'
alias db='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias mj='sudo launchctl load /Library/LaunchDaemons/org.jenkins-ci.plist'
alias dj='sudo launchctl unload /Library/LaunchDaemons/org.jenkins-ci.plist'
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
alias upstream='git pull upstream $(current_branch)'
function server() {
local port="${1:-8000}"
open "http://localhost:${port}/"
python -m SimpleHTTPServer "$port"
}

export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin

. ~/bin/z.sh
export PATH=/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/Cellar/gettext/0.18.2/bin:/usr/local
export PATH=$PATH:/usr/local/go/bin:/usr/local/lib/node_modules
export PATH=$PATH:/User/vinit/node_modules/ngen/bin
export PROJECT_HOME="/Users/vinit/Code"
export PIP_DOWNLOAD_CACHE="/Users/vinit/Code/.pipcache"

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/share/python/virtualenvwrapper.sh ]]; then
    source /usr/local/share/python/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi



# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
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
export PATH=$PATH:/usr/local/heroku/bin:./bin:/Users/vinit/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/Users/vinit/.sfs:/Users/vinit/.dotfiles/bin:/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/Cellar/gettext/0.18.2/bin
