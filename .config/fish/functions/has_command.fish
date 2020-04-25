function has_command --description "Check if a command exists on the path"
	if which $argv >/dev/null
		return 0
	else
		return 1
	end
end

