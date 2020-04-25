function fish_right_prompt
	set -l last_status $status
    if test $last_status -ne 0
		set_color $fish_color_status
        echo -n "$last_status "
		set_color normal
    end

	echo -n (__fish_git_prompt " [%s] ")

	set_color yellow
	echo (date +"[%a %H:%M:%S]")

	set_color normal
end
