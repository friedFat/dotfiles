# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Logout user after closing X session as that would lead to access to the terminal when crashing the X server
alias startx="startx && exit"

alias xr="sudo xbps-remove"
alias xq="xbps-query -Rs"
