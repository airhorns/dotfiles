function fish_prompt -d "Write out the prompt"
  # Hostname
  printf '%s%s' (set_color magenta) (hostname -s)

	# Color writeable dirs green, read-only dirs red
	if test -w "."
		printf ' %s%s' (set_color blue) (prompt_pwd)
	else
		printf ' %s%s' (set_color red) (prompt_pwd)
	end

  # spit out virtual env
  if set -q VIRTUAL_ENV
    printf ' %s%s' (set_color brown) (basename "$VIRTUAL_ENV")
  end

  # spit out virtual env
  if set -q HADOOP_ENV
    printf ' %s%s' (set_color magenta) $HADOOP_ENV
  end

	# Print git branch
  printf '%s%s' (set_color green) (__git_ps1)
	printf '%s ➜  %s' (set_color -o brown) (set_color normal)
end
