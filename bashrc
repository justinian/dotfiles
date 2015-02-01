# If not running interactively, don't do anything
[ -z "$PS1" ] && return

source "$HOME/.bashrc.d/history"
source "$HOME/.bashrc.d/behavior"
source "$HOME/.bashrc.d/functions"
source "$HOME/.bashrc.d/prompt"
source "$HOME/.bashrc.d/aliases"
source "$HOME/.bashrc.d/environment"

HOSTFILE=`hostname -s`
if [ -f "$HOME/.bashrc.d/hosts/$HOSTFILE" ]; then
	source "$HOME/.bashrc.d/hosts/$HOSTFILE" 
fi

if [ -f "$HOME/.bashrc.d/hosts/$HOSTFILE.local" ]; then
	source "$HOME/.bashrc.d/hosts/$HOSTFILE.local" 
fi

source "$HOME/.bashrc.d/alucard"

# vim: ft=sh
