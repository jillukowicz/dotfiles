#CD
alias ..="cd .."
alias b="cd .."
alias h="cd ~"
alias -="cd -"

#VIM
alias ea='vim ~/.config/fish/aliases.fish'
alias ef='vim ~/.config/fish/config.fish'
alias eg 'vim ~/.gitconfig'
alias ev 'vim ~/.vimrc'
alias et 'vim ~/.tmux.conf'

#LS
alias lg="ls -Gla"
alias lsd='ls -l | grep "^d"'
alias lss='ls -al | grep "\->"'
alias ll='ls -ahlF'
alias la='ls -ltra'
alias l='ls -CF'
alias t=tree
alias c=clear
alias f='find . -name'
alias fa='find / -name'
alias r='rm -R'
alias o='open ~/'
alias w='cd ~/workspace'
alias a='atom'
alias q='exit'
alias tig='/Users/jillukowicz/bin/tig'

#APPS
alias D="cd ~/Downloads"
alias A="cd ~/Applications"
alias g="git"
alias v="vim"
alias cafe="caffeinate -i ~/scripts/coffe_cup.sh"
alias ip='geoiplookup'
alias osx='~/scripts/mac.sh'
alias czip='zip -r'

#ACSL
alias b2b01='ssh b2b01.acslworld.com'
alias tbroker='ssh tbroker'
alias tga='ssh tga'
alias dga='ssh dga'
alias lsssh="lsof -i tcp | grep '^ssh'"
alias kssh="kill -9 (ps -ef | grep "ssh" | awk '{print $2}')"
alias tunnel="~/scripts/autossh-acsl-dev01.sh"
alias smongo="mongod --config /usr/local/etc/mongod.conf"

#GIT
alias gs='git status'
alias gbm='git checkout master'
alias gbr='git checkout release'
alias undopush="git push -f origin HEAD^:master"
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gca="git commit -a -m"
alias gcm="git commit -m"
alias gcr!='git commit -v --amend --no-edit'
alias gbd="git branch -D"
alias gst="git status -sb --ignore-submodules"
alias gstl="git status"
alias gm="git merge --no-ff"
alias gp="git push"
alias gpt="git push --tags"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git lg"
alias gpom="git pull origin master"
alias glup="git log origin/master..HEAD"

#Turn on coloring on grep
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#Quick check running state of a process
alias psef="ps -ef | grep "
alias top="top -o cpu"
alias ps="command ps -SAcr -o 'uid,pid,ppid,time,rss,command'"

#DOCKER
alias dm='docker-machine'
#alias drc='docker rm $(docker ps -aq)'
#alias dri='docker rmi $(docker images --filter dangling=true --quiet)'

#FISH
alias reload='source ~/.config/fish/config.fish'
