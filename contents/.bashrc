# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

RED="\[\e[0;31m\]"
BLUE="\[\e[0;34m\]"
GREEN="\[\e[0;32m\]"
END="\[\e[m\]"

USER="$BLUE\u$END"
HOST="$GREEN\h$RESET"
DIR="$BLUE\W$RESET"
PROMPT="$GREEN\$"

export PS1="$RED[$END$BLUE\u$END$RED@$END$GREEN\h$END$BLUE \W $END$RED]$END$GREEN-> $END"
unset rc
