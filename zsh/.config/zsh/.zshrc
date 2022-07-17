#!/bin/sh

# Enable vi mode
bindkey -v
export KEYTIMEOUT=1

# Prompt settings
export PS1="> %B%n%b > [%~]: "
setopt autocd
setopt interactive_comments
stty stop undef

# Enable autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Enable colors
autoload -U colors && colors

# Unix program aliases
alias \
	cp="cp -iv" \
	diff="diff --color=auto" \
	grep="grep --color=auto" \
	ip="ip -color=auto" \
	ls="ls -hN --color=auto --group-directories-first" \
	mkdir="mkdir -pv" \
	mv="mv -iv" \
	rm="rm -vI" \
	sudo="nocorrect sudo -E "

# User program aliases
alias \
	g="git" \
	e="$EDITOR" \
	p="pacman" \
	z="zathura"

# Use neovim if installed
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"
