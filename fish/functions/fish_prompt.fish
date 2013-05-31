function fish_prompt -d "Write out the prompt"
	printf '%s%s%s' (set_color magenta) (hostname | cut -d . -f 1) (set_color normal)

	# Color writeable dirs green, read-only dirs red
	if test -w "."
		printf ' %s%s' (set_color blue) (prompt_pwd)
	else
		printf ' %s%s' (set_color red) (prompt_pwd)
	end

	# Print git branch
  printf ' %s%s%s' (set_color normal) (set_color green) (__git_ps1)
	printf '%s ➜  %s' (set_color -o purple) (set_color normal)
end
