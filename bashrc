if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

umask 022
ulimit -S -c 0 > /dev/null
shopt -s cdable_vars checkwinsize histappend extglob cmdhist dotglob

export HISTCONTROL=ignoreboth
export HISTFILESIZE=16777216
export HISTIGNORE='ls:bg:fg:history'
export HISTSIZE=100000
export HISTTIMEFORMAT='%F %T '
export PYTHONSTARTUP=~/.pythonrc.py
export LIBVIRT_DEFAULT_URI='qemu:///system'
export EDITOR=$(type -P vim || type -P vi)
export PS1='[\u@\h \W]\$ '
