export JAVA_HOME="$(/usr/libexec/java_home)"

alias vimf='vim $(fzf)'

alias pg-start='pg_ctl -l /Users/challen.hb/misc/pg-logs/log -D /usr/local/var/postgres start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop'

GIT_PROMPT_THEME=Solarized
GIT_PROMPT_FETCH_REMOTE_STATUS=0

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
