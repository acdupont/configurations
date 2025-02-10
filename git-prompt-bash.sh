################################################################################
# git prompt
gitpromptfile=~/.git-prompt.sh
if [ -f ${gitpromptfile} ]; then
	source ~/.git-prompt.sh
	export GIT_PS1_SHOWDIRTYSTATE=
	export GIT_PS1_SHOWSTASHSTATE=
	export GIT_PS1_SHOWUNTRACKEDFILES=
	export GIT_PS1_COMPRESSSPARSESTATE=
	export GIT_PS1_SHOWUPSTREAM=
	export GIT_PS1_SHOWCONFLICTSTATE=
	export GIT_PS1_SHOWCOLORHINTS=true

	magenta="\[\e[35m\]"
	red="\[\e[31m\]"
	endcolor="\[\e[0m\]"
	usercolor=$magenta
	if [ -n "${SSH_CONNECTION}" ]; then
		usercolor=$red
	fi
	PROMPT_COMMAND='__git_ps1 "${usercolor}\u@\h${endcolor}:\[\e[33m\]\w\[\e[0m\]" "\\\$ "'
else
	echo "${gitpromptfile} not found, aborting git terminal setup"
	echo "${gitpromptfile} aborted setting up terminal with git info"
fi
################################################################################
