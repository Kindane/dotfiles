if status is-interactive
## useful ls-aliases
	alias lsa='ls -alAFh'
	alias l='ls -aACF'
## for russian layout
	alias сдуфк='clear'
	alias ды='ls'
## lol
	alias celar='clear'
	alias ..='cd ..'

# run tmux on startup
	if command -v tmux &> /dev/null && [ -z "$TMUX" ]
		tmux
#tmux attach -t default || tmux new -s default
	end
end
