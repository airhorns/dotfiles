function fish_prompt -d "Write out the prompt"
	printf '%s%s@%s%s' (set_color magenta) (whoami) (hostname|cut -d . -f 1) (set_color normal)

	# Color writeable dirs green, read-only dirs red
	if test -w "."
		printf ' %s%s' (set_color green) (prompt_pwd)
	else
		printf ' %s%s' (set_color red) (prompt_pwd)
	end

	# Print git branch
	if test -d ".git"
		printf ' %s%s/%s' (set_color normal) (set_color cyan) (parse_git_branch)
	end
	printf '%s> ' (set_color normal)
end
