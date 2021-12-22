# Set Variables

# Change ZSH Options

# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Create Aliases
alias ls="ls -lAFh"

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