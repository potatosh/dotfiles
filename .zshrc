export CATALINA_HOME="/Users/potatosh/usr/apache-tomcat-6.0.35"
export CATALINA_OPTS="-Xmx256M -Xms128M"
export JAVA_HOME=/Library/Java/Home
export PATH=$PATH:/Users/potatosh/usr/apache-tomcat-6.0.35/bin	# Tomcatのパスはあとで書き換えねば・・・
export PATH=$PATH:$HOME/.rvm/bin

unlimit
limit core 0
limit -s

umask 022

HISTFILE=${HOME}/.zhistory
HISTSIZE=100000
SAVEHIST=100000

PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/usr/local/mysql/bin

LANG=ja_JP.UTF-8
LC_CTYPE=ja_JP.UTF-8
LC_MESSAGES=C
EDITOR=`which vim`
PAGER=`which lv`
export PATH SHELL LANG LC_CTYPE LC_MESSAGES EDITOR

alias vv="vim ~/.vimrc"
alias zc="vim ~/.zshrc"
alias cl="clear"

alias g="git"
alias bc="bundle exec rspec"

autoload -U compinit
compinit

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '<%b>'
zstyle ':vcs_info:*' actionformats '<%b|%a>'
precmd () {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

PROMPT="v('ω') %F{yellow}< %B%n%f %F{green}[%~]%f%1(v| %F{cyan}%1v%f|)%b$ "

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z} r:|[-_.]=**'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
