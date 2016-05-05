set -x PATH /usr/local/sbin $PATH
set -x PATH ~/Library/Android/sdk/platform-tools $PATH
set -x GOPATH ~/.go
set -x SHELL /bin/bash
set -x PATH $GOPATH/bin $PATH

status --is-interactive; and . (rbenv init -|psub)
