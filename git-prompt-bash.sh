
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=true
PROMPT_COMMAND='__git_ps1 "\[\e[35m\]\u@\h\[\e[0m\]:\[\e[33m\]\w\[\e[0m\]" "\\\$ "'
