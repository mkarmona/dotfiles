# some minor env vars
set -gx EDITOR "gvim -f"
set -gx PAGER less
set -gx TERM xterm-256color

# Go root path
set -gx GOROOT /opt/go

# path for user
set -gx PATH $PATH ~/bin $GOROOT/bin
