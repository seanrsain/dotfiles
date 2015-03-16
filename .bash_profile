if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ "$(uname -s)" = "Darwin" ]; then
    OS="OSX"
else
    OS=`uname -s`
fi

if [ $OS = "OSX" ]; then
    [ -f ".osx" ] && source ".osx"
fi

alias ll='ls -la'

export PS1="\[\033[32;1m\][\u@\h \w]\n$ \[\033[0m\]"
export PATH=~/bin:$PATH

export SCALA_HOME=/usr/local/opt/scala/idea
