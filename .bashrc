# ALEX'S BASH CONFIG FILE

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Controlling bash history file
HISTCONTROL=ignorespace:ignoredups:erasedups
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=5000

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Make less more friendly
export LESS='--ignore-case --LONG-PROMPT --RAW-CONTROL-CHARS --tabs=4 --window=-2'

# Make better completions
shopt -s nocaseglob   # ignore case when expanding glob
shopt -s nocasematch  # ignore case when matching strings
shopt -s globstar     # enable "recursive" glob, ex: ls **/*.txt

# Import other files
test -f ~/.bash_functions   && source ~/.bash_functions    # helper functions
test -f ~/.bash_aliases     && source ~/.bash_aliases      # useful aliases
test -f ~/.bash_completions && source ~/.bash_completions  # custom completions
test -f ~/.bash_local       && source ~/.bash_local        # put your own stuff here, so you can update this file safely

# Show a very informative prompt command
PS1='\[\e]0;\W\a\] \[\e[31m\]`__last_cmd_exit` \[\e[34m\]\n\t \[\e[32m\]\u@\h \[\e[35m\]$OSTYPE \[\e[33m\]\w \[\e[36m\]`__git_branch_current` \[\e[90m\]\n\$ \[\e[0m\]\[$(tput sgr0)\]'

