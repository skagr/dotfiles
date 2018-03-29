case "$OSTYPE" in
  darwin*)  local su_prompt="⚡️ " ;;
#  solaris*)
#  linux*)
#  bsd*)
#  msys*)
  *)        local su_prompt="#" ;;
esac

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
local su_status="%(!:%{$fg_bold[red]%}${su_prompt}%{$reset_color%} :)"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)${su_status}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
