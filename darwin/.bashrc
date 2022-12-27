alias gist='gist -p -c'
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
alias hadoop_ssh='ssh -L 9100:localhost:9100 -L 9101:localhost:9101 -L 9200:localhost:80'

export PS1='[\u@\h \W `git branch --no-color 2> /dev/null | grep \* | sed "s/^*\ /\(/" | sed "s/$/)/"`]\$ '

# Override annoying zsh
export SHELL="/bin/bash"

# Brew
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"

# Python
export DJANGO_SETTINGS_MODULE=settings.dev
export PYTHONPATH=$PYTHONPATH:/Users/mwalker/pulsemeridian/svn-repo/code
export WORKON_HOME="$HOME/.virtualenv"
mkdir -p "$WORKON_HOME"
source "$(which virtualenvwrapper.sh)"

# Java
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home/
#export ANT_OPTS='-Xmx1G'

# JavaScript
export PATH="/usr/local/opt/node@16/bin:$PATH"
alias jsc='/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc'

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$HADOOP_HOME/bin:$JRUBY_HOME/bin:$PATH:/usr/X11R6/bin:~/bin:~/.cabal/bin

export EDITOR=vim
export PAGER=less
export LESS="-iMSx4 -FXR"

export PATH="$HOME/.poetry/bin:$PATH" # Add our local poetry override

PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##
# Load any extra Bash profile scripts
##
if [[ -d ~/.profile.d ]]; then
    for f in ~/.profile.d/*.bash; do
        . "$f"
    done
fi

# Use brew-provided openssl
export PATH="$(brew --prefix openssl)/bin:$PATH"
export OPENSSL_ROOT="$(brew --prefix openssl)"

# Simon autocompletion
complete -F _simon-db simon-db
complete -F _simon-docker simon-docker
