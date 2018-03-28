amiroot() {
  if [ $UID -eq 0 ]; then

    case "$OSTYPE" in
      darwin*)  echo "⚡️  " ;; 
#      solaris*)
#      linux*)
#      bsd*)
#      msys*)
      *)        echo "%{$fg_bold[red]%}!%{$reset_color%} " ;;
    esac

  fi
}

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)$(amiroot)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
