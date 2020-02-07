# Putting this here for now: set column to 290 and row to 80 to get the
# terminal to open in full screen :)

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

alias hafcaf='caffeinate -dut 36000'

export PATH=$PATH:~/bin

function gw {
   ./gradlew $*
}

# In case I do scala + gradle again
function gwAsDev {
   ./gradlew "$@" -x gatlingScalafmt -x scalafmt
}

#function gwAsDev {
#   ./gradlew "$@" -x gatlingScalafmt -x scalafmt -x scoverageScalafmt -x testScalafmt
#}
