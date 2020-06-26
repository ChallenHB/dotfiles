typeset +H return_code="%(?.%{$fg_bold[green]%} %{✔%G%}.%{$fg[red]%}%B✗%G%{$reset_color%})"

PROMPT='%{$return_code%} %(!.%{$fg[red]%}.%{$fg[yellow]%})%~%{$fg_bold[blue]%}%{$reset_color%} $(git_super_status)%{$reset_color%}
%B%{$FG[183]%} %D{%K:%M}%{$reset_color%} $ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[cyan]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} %{✔%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚ %G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}%{…%G%}"
