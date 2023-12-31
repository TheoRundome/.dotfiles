# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
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

unset rc

# Alias`s
alias ls='lsd'
alias ll='lsd -al'
alias cl='clear'
alias rr='ranger'
alias q='exit'
alias conf='nvim /home/me/.config/i3/config'
alias confpoly='nvim /home/me/.config/polybar/config'
alias v='nvim'
alias vim='nvim'

# Vi key bindings
set -o vi

# Editor
export EDITOR="nvim"
export VISUAL="nvim"


