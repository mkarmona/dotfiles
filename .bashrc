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
            # str=$(git rev-list --left-right --count origin/${branch}...${branch})
            # from_o=$(echo $str | cut -f1 -d" ")
            # to_o=$(echo $str | cut -f2 -d" ")
            git_branch="(${branch}|$(find_git_dirty))"
        fi
    fi
    echo "$git_branch "
}

if [ -e /lib/terminfo/x/xterm-256color ]; then
    export TERM="xterm-256color"
else
    export TERM="xterm-color"
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

shopt -s histappend
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

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

bold=$(tput bold)
reset=$(tput sgr0)
green=$(tput setaf 2)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)

if [ "$color_prompt" = yes ]; then
    PS1=$'\[$yellow\]\j:$USER:$(__shortpath "\w" 15):\[$reset\] '
else
    PS1=$'\j:$USER:$(__shortpath "\w" 15): '
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
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export EDITOR='emacsclient -c -a emacs'
export PAGER="less"

alias 7zaa="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on"
alias 7up='svn up'
alias emacsc="emacsclient -c"
alias emacst="emacsclient -t"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi



GAMES_PATH=/usr/games
# default path
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:$GAMES_PATH

#export GOROOT=/usr/local/go
export GOPATH=~/src/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:~/bin
export NVIM_TUI_ENABLE_TRUE_COLOR=1
## /usr/local/bin/virtualenvwrapper.sh

if [ -f ~/.pythonrc ]; then
    export PYTHONSTARTUP=~/.pythonrc
fi

GRUVBOX_SHELL="$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"
[[ -s $GRUVBOX_SHELL ]] && source $GRUVBOX_SHELL
[[ -s "/home/el1mc/.gvm/scripts/gvm" ]] && source "/home/el1mc/.gvm/scripts/gvm"

export PATH="/home/mkarmona/.linuxbrew/bin:$PATH"
