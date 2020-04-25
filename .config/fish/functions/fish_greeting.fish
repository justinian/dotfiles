function fish_greeting --description 'Initial greeting upon login'
	if set -qU justin_no_greeting
		return
	end

	if test (tput colors) -ge 256
		cat ~/.config/fish/alucard.ansi
		echo
	end

	set -l quotes ~/.config/fish/sotnquotes
	if not fortune $quotes
		strfile $quotes
		echo
		fortune $quotes
	end
end
