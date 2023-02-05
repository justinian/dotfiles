function fish_greeting --description 'Initial greeting upon login'
	if set -qU justin_no_greeting
		return
	end

	if test (tput colors) -ge 256
        set -l logo ~/.config/fish/logos/(hostname|tr '[A-Z]' '[a-z]').ansi
        if test -f $logo
            echo
            cat $logo
        end
	end
end
