# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NVM_DIR="$HOME/.nvm"
export NULLCMD=bat
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)

# Create Aliases
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='bat <<<${(F)path}'
alias java8='export JAVA_HOME=$JAVA_8_HOME'

# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/opt/homebrew/bin/code"

# Write Handy Functions
function mkcd(){
	mkdir -p "$@" && cd "$_";
}

# Use ZSH Plugins

# Load NVM
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion