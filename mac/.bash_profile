# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Betere prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

## Kleuren
USER="\[$(tput setaf 6)\]"
HOST="\[$(tput setaf 148)\]"
DIR="\[$(tput setaf 11)\]"
GIT="\[$(tput setaf 14)\]"
RESET="\[$(tput sgr0)\]"

export PS1="${USER}\u${RESET}@${HOST}\h:${DIR}\w${GIT}\$(parse_git_branch)${RESET}$ "
