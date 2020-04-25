function man --description 'Run man with better coloring'
	set -l main_color 68f
	set -l sub_color aaf

	set -lx LESS_TERMCAP_md (set_color --bold $main_color)
	set -lx LESS_TERMCAP_so (set_color --background $main_color black)
	set -lx LESS_TERMCAP_us (set_color --underline --italics $sub_color)

	set -lx LESS_TERMCAP_me (set_color normal)
	set -lx LESS_TERMCAP_se (set_color normal)
	set -lx LESS_TERMCAP_ue (set_color normal)

	command man $argv
end

#set -lx LESS_TERMCAP_mb (tput setaf 1)
#set -lx LESS_TERMCAP_md (tput setaf 163)
#set -lx LESS_TERMCAP_me (tput sgr0)
##set -lx LESS_TERMCAP_se (tput sgr0)
#set -lx LESS_TERMCAP_so (tput setaf 1; tput smso)
#set -lx LESS_TERMCAP_ue (tput sgr0)
#set -lx LESS_TERMCAP_us (tput setaf 191)
#
#set -lx LESS_TERMCAP_mb (printf "\e[1;31m")
#set -lx LESS_TERMCAP_md (printf "\e[1;31m")
#set -lx LESS_TERMCAP_me (printf "\e[0m")
#set -lx LESS_TERMCAP_se (printf "\e[0m")
#set -lx LESS_TERMCAP_so (printf "\e[1;44;33m")
#set -lx LESS_TERMCAP_ue (printf "\e[0m")
#set -lx LESS_TERMCAP_us (printf "\e[1;32m")
