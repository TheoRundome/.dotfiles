# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
setopt autocd extendedglob nomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sebek/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Autosugestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Highlighting
source /home/sebek/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# p10k
source ~/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# bind jj to Esc 
bindkey -M viins 'jj' vi-cmd-mode

# Alias`s'
alias cl='clear'
alias rr='ranger'
alias q='exit'
alias ll='ls -al'

# Editor
 export VISUAL=vim
 export EDITOR=vim
