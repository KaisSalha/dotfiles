# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NVM_DIR="$HOME/.nvm"
export NULLCMD=bat
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_17_HOME=$(/usr/libexec/java_home -v17)
export JAVA_HOME=$(/usr/libexec/java_home -v17)
export PIPENV_VENV_IN_PROJECT=1
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# Create Aliases
alias ls='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='bat <<<${(F)path}'
alias j8='export JAVA_HOME=$JAVA_8_HOME'
alias j11='export JAVA_HOME=$JAVA_11_HOME'
alias localip='ipconfig getifaddr en0'

# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/opt/homebrew/bin/code"
export PATH="$PATH:/Users/kaissalha/Library/Application Support/pypoetry/venv/bin"

# Android SDK
export REPO_OS_OVERRIDE="macosx"
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin

# Add pyenv
export PATH=$(pyenv root)/shims:$PATH

# Write Handy Functions
function mkcd(){
	mkdir -p "$@" && cd "$_";
}

# Use ZSH Plugins

# Load NVM
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completioneval "$(~/.rbenv/bin/rbenv init - zsh)"
eval "$(rbenv init -)"

# pnpm
export PNPM_HOME="/Users/kaissalha/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
