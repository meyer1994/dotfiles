#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    XKB_DEFAULT_LAYOUT=us exec sway
fi

# Load pyenv automatically by appending
# the following to ~/.bash_profile:
eval "$(pyenv init -)"

