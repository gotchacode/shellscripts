export EDITOR=vim
# export EDITOR="$HOME/bin/mate -w"

source ~/.bash/aliases
source ~/.bash/paths

# Bashmarks is a simple set of bash functions that allows you to bookmark
# folders in the command-line.
source ~/.bash/bookmarks

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

source ~/.bash/completions

# Git completion
# git show unstaged and staged symbol
GIT_PS1_SHOWDIRTYSTATE='true'
GIT_PS1_SHOWSTASHSTATE="show"
GIT_PS1_SHOWUNTRACKEDFILES="show"
GIT_PS1_SHOWUPSTREAM="auto"

# bash prompt
source ~/.bash/prompt

# bash extras
source ~/.bash/extras

# z - jump to folders
# https://github.com/rupa/z/raw/master/z.sh
source ~/bin/z.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#Aliases
alias c='clear'
alias clone='git clone'

alias pypi='python setup.py sdist bdist_wininst upload'
#django related a
alias serve='python manage.py runserver'
alias syncdb='python manage.py syncdb'
alias deploy='gondor deploy test HEAD'
alias cstatic='gondor run test python manage.py collectstatic'
alias migrate='python manage.py migrate'
alias db='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'

function server() {
local port="${1:-8000}"
open "http://localhost:${port}/"
python -m SimpleHTTPServer "$port"
}

. ~/bin/z.sh
export PATH=/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/Cellar/gettext/0.18.2/bin

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

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
#alias l='ls -la'
alias ll='ls -l'
alias la='ls -lA'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


alias afind='ack-grep -il'
alias c='clear'
alias clone='git clone'
alias cstatic='gondor run test python manage.py collectstatic'
alias d='dirs -v | head -10'
alias db='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias deploy='gondor deploy test HEAD'
alias ebuild='nocorrect ebuild'
alias g=git
alias ga='git add'
alias gac='git commit -am'
alias gb='git reset --soft'
alias gba='git branch -a'
alias gbl='git branch -l'
alias gc='git commit -m'
alias 'gc!'='git commit -v --amend'
alias gca='git commit -am'
alias 'gca!'='git commit -v -a --amend'
alias gcl='git config --list'
alias gcm='git checkout master'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gf='git ls-files | grep'
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
alias pullo='git pull origin HEAD'
alias pusho='git push origin HEAD'
alias gist='nocorrect gist'
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
alias gl='git log --pretty='\''format:%Cgreen%h%Creset %an - %s'\'' --graph'
alias glg='git log --graph --pretty=format:"%Cred%h%Creset %C(yellow)%an%d%Creset %s %Cgreen(%cr)%Creset" --date=relative'
alias glgg='git log --graph --max-count=5'
alias glgga='git log --graph --decorate --all'
alias glo='git log --oneline'
alias globurl='noglob urlglobber '
alias glp=_git_log_prettily
alias gm='git merge --no-ff'
alias gp='git push'
alias poat='git push origin --all && git push origin --tags'
alias gr='git remote'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grset='git remote set-url'
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'
alias grup='git remote update'
alias grv='git remote -v'
alias gsd='git svn dcommit'
alias gsr='git svn rebase'
alias gss='git status -s'
alias gst='git status'
alias gts='git status'
alias gup='git pull --rebase'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias heroku='nocorrect heroku'
alias history='fc -l 1'
alias hpodder='nocorrect hpodder'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls -G'
alias lsa='ls -lah'
alias m=mate
alias man='nocorrect man'
alias md='mkdir -p'
alias migrate='python manage.py migrate'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias mysql='nocorrect mysql'
alias ni='npm install'
alias ns='npm start'
alias please=sudo
alias po=popd
alias pu=pushd
alias pypi='python setup.py sdist bdist_wininst upload'
alias rd=rmdir
alias reload='. ~/.bash_profile'
alias run-help=man
alias serve='python manage.py runserver'
alias sl=ls
alias sub='subl -w -a'
alias sudo='nocorrect sudo'
alias syncdb='python manage.py syncdb'
alias tail='tail -f'
alias webserver='python -m SimpleHTTPServer'
alias which-command=whence
alias z='_z 2>&1'
alias clone='git clone'
alias cstatic='gondor run test python manage.py collectstatic'
alias d='dirs -v | head -10'
alias db='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias deploy='gondor deploy test HEAD'
alias ebuild='nocorrect ebuild'
alias g=git
alias ga='git add'
alias gac='git commit -am'
alias gb='git reset --soft'
alias gba='git branch -a'
alias gbl='git branch -l'
alias gc='git commit -m'
alias 'gc!'='git commit -v --amend'
alias gca='git commit -am'
alias 'gca!'='git commit -v -a --amend'
alias gcl='git config --list'
alias gcm='git checkout master'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gf='git ls-files | grep'
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
alias ggpull='git pull origin $(current_branch)'
alias ggpush='git push origin $(current_branch)'
alias gist='nocorrect gist'
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
alias gl='git log --pretty='\''format:%Cgreen%h%Creset %an - %s'\'' --graph'
alias glg='git log --graph --pretty=format:"%Cred%h%Creset %C(yellow)%an%d%Creset %s %Cgreen(%cr)%Creset" --date=relative'
alias glgg='git log --graph --max-count=5'
alias glgga='git log --graph --decorate --all'
alias glo='git log --oneline'
alias globurl='noglob urlglobber '
alias glp=_git_log_prettily
alias gm='git merge --no-ff'
alias gp='git push'
alias poat='git push origin --all && git push origin --tags'
alias gr='git remote'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grset='git remote set-url'
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'
alias grup='git remote update'
alias grv='git remote -v'
alias gsd='git svn dcommit'
alias gsr='git svn rebase'
alias gss='git status -s'
alias gst='git status'
alias gts='git status'
alias gup='git pull --rebase'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias heroku='nocorrect heroku'
alias history='fc -l 1'
alias hpodder='nocorrect hpodder'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls -G'
alias lsa='ls -lah'
alias m=mate
alias man='nocorrect man'
alias md='mkdir -p'
alias migrate='python manage.py migrate'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias mysql='nocorrect mysql'
alias ni='npm install'
alias ns='npm start'
alias please=sudo
alias po=popd
alias pu=pushd
alias pypi='python setup.py sdist bdist_wininst upload'
alias rd=rmdir
alias reload='. ~/.bash_profile'
alias run-help=man
alias serve='python manage.py runserver'
alias sl=ls
alias sub='subl -w -a'
alias syncdb='python manage.py syncdb'
alias tail='tail -f'
alias webserver='python -m SimpleHTTPServer'
alias which-command=whence
alias z='_z 2>&1'
