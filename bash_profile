# Set editor and git editor
export EDITOR="/usr/bin/vim"
export GIT_EDITOR=$EDITOR
export CLICOLOR=1 # Set terminal colors

# Ruby Settings
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_FREE_MIN=500000
export RUBY_HEAP_MIN_SLOTS=40000

# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Append to history file
shopt -s histappend

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
else
  echo "No bash-completion available: brew install bash-completion"
fi

if [ -f `brew --prefix`/Library/Contributions/brew_bash_completion.sh ]; then
  . `brew --prefix`/Library/Contributions/brew_bash_completion.sh
fi

if [ -f /usr/local/bin/rbenv ]; then
  eval "$(rbenv init -)"
fi
