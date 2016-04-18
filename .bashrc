# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# shorten a path in $1 to max of $2 characters, prepending a "..."
function __shortpath {
    if [[ ${#1} -gt $2 ]]; then
        len=$2+3
        echo "..."${1: -$len}
    else
        echo $1
    fi
}

function __short_hostname {
    echo $(hostname -s)
}

find_git_dirty() {
    local status=$(git status --porcelain 2> /dev/null)
    local git_dirty=''

    if [[ "$status" != "" ]]; then
        git_dirty='✘'
    else
        git_dirty='✔'
    fi
    echo $git_dirty
}

find_git_branch() {
    # Based on: http://stackoverflow.com/a/13003854/170413
    # https://gist.github.com/sindresorhus/3898739
    local branch=''
    local git_branch=''
    if branch=$(git symbolic-ref --short HEAD 2> /dev/null); then
        if [[ '$branch' == 'HEAD' ]]; then
            git_branch='(detached*)'
        else
            str=$(git rev-list --left-right --count origin/${branch}...${branch})
            from_o=$(echo $str | cut -f1 -d" ")
            to_o=$(echo $str | cut -f2 -d" ")
            git_branch="(${branch}⭭${from_o}⭫${to_o}|$(find_git_dirty))"
        fi
    fi
    echo "$git_branch "
}

if [ -e /lib/terminfo/x/xterm-256color ]; then
    export TERM="xterm-256color"
else
    export TERM="xterm-color"
fi

TERM=rxvt-unicode-256color
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

#export TERM="xterm+256color"
# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1=$'\[\033[01;32;5;170m\]$(__short_hostname)\[\033[00m\] \[\033[01;35;5;172m\]\j\[\033[01;34;5;202m\] $(__shortpath "\w" 15)\[\033[00m\] $(find_git_branch)\[\033[01;31;5;108m\]$\[\033[00m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

dircolors=$HOME/.dircolors-$(tput colors)
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    if [[ -f $dircolors ]]; then
        eval $(dircolors -b $dircolors)
    else
        eval $(dircolors)
    fi
    alias ls='ls --color=auto -F'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


nim_path="${HOME}/src/github.com/Araq/Nim"
nimble_path="${HOME}/.nimble"
#alias vim='TERM=xterm-256color vim'
alias 7up='svn up'

export EDITOR='emacsclient -c -a emacs'
export PAGER="less"
alias emacsc="emacsclient -c"
alias emacst="emacsclient -t"

# default path
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

export GOROOT=/usr/local/go
export GOPATH=~/sources/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:~/bin:$nim_path/bin:$nimble_path/bin
export NVIM_TUI_ENABLE_TRUE_COLOR=1
## /usr/local/bin/virtualenvwrapper.sh

if [ -f ~/.pythonrc ]; then
    export PYTHONSTARTUP=~/.pythonrc
fi

#GRUVBOX_SHELL="$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"
#[[ -s $GRUVBOX_SHELL ]] && source $GRUVBOX_SHELL
#
[[ -s "/home/el1mc/.gvm/scripts/gvm" ]] && source "/home/el1mc/.gvm/scripts/gvm"

racket_path="$HOME/opt/racket"

export SCALA_HOME=~/opt/scala/scala-2.11.8
export PATH=$racket_path/bin:$PATH:$SCALA_HOME/bin
export MANPATH=$racket_path/man:$MANPATH
xset r rate 250 40
