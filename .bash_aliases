# if you haven't this part in your ~/.bashrc file, please add it for this file
# to have any effect at all:
# 
# 	if [ -f ~/.bash_aliases ]; then
# 	. ~/.bash_aliases
# 	fi
#

# colorful output and folders first (thank god)
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'

# update everything
alias update='pikaur -Syu'

# remove orphaned packages
alias orphans='sudo pacman -Rns $(pacman -Qtdq)'

# edit config file of i3 using neovim
# change it to vim if you want to use vim (or nano etc.)
alias conf='nvim ~/.config/sway/config'

# calculator
alias calc='python -i -c "from math import *; from statistics import *"'

# neovim as the default
alias vi='nvim'
alias vim='nvim'

# venv alias
alias venv='python -m venv .venv && source .venv/bin/activate'
