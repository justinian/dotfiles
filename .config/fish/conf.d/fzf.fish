if has_command fd
	set -g fd_command fd
else if has_command fdfind
	set -g fd_command fdfind
end

set -gx FZF_DEFAULT_COMMAND $fd_command --type f --follow
set -gx FZF_DEFAULT_OPTS --color "fg:69,bg:236,hl:65,fg+:159,hl+:108,info:108,prompt:109,spinner:108,pointer:168,marker:168" --height 50%
