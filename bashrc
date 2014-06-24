# If not running interactively, don't do anything
[ -z "$PS1" ] && return

source "$HOME/.bashrc.d/history"
source "$HOME/.bashrc.d/behavior"
source "$HOME/.bashrc.d/prompt"
source "$HOME/.bashrc.d/aliases"
source "$HOME/.bashrc.d/environment"

if [ -f "$HOME/.bashrc.d/hosts/$HOSTNAME" ]; then
	source "$HOME/.bashrc.d/hosts/$HOSTNAME" 
fi
