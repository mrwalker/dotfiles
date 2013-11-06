alias top='top -o cpu'
alias grep='grep --color'
alias cls='clear;ls'
alias m='more'
alias ge='emacs'
alias ls='ls -hFG'
alias ll='ls -lh'
alias la='ls -ACF'
alias rm='rm -i'
alias du='du -h'
alias df='df -H'
alias jrake='jruby -S rake'

export PS1='[\u@\h \W `git branch --no-color 2> /dev/null | grep \* | sed "s/^*\ /\(/" | sed "s/$/)/"`]\$ '

export PYTHONPATH=Users/mwalker/pulsemeridian/svn-repo/code:/opt/local/lib/python2.5/site-packages/:$PYTHONPATH
# Python
export WORKON_HOME="$HOME/.virtualenv"
mkdir -p "$WORKON_HOME"
source "$(which virtualenvwrapper.sh)"

export JAVA_HOME=/Library/Java/Home
#export ANT_OPTS='-Xmx1G'

export PATH=/opt/local/lib/postgresql83/bin:/opt/local/bin:/opt/local/sbin:/bin:/usr/local/bin:/usr/local/git/bin:$JAVA_HOME/bin:$HADOOP_HOME/bin:$JRUBY_HOME/bin:$PATH:/usr/X11R6/bin:~/bin:~/.cabal/bin
export MANPATH=/opt/local/share/man:$MANPATH
export INFOPATH=$INFOPATH:/opt/local/share/info

export EDITOR=vim
export PAGER=less
export LESS="-iMSx4 -FXR"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
