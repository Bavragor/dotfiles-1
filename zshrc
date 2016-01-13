# load our own completion functions
fpath=(~/.zsh/completion $fpath)
fpath=(/opt/boxen/homebrew/share/zsh/site-functions $fpath)

# completion
autoload -U compinit
compinit

# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR=vim

# emacs mode
bindkey -e

# use incremental search
bindkey "^R" history-incremental-search-backward

# add some readline keys back
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# handy keybindings
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word

# expand functions in the prompt
setopt prompt_subst

# ignore duplicate history entries
setopt histignoredups

# automatically pushd
setopt auto_pushd
export dirstacksize=5

# awesome cd movements from zshkit
setopt AUTOCD
setopt AUTOPUSHD PUSHDMINUS PUSHDSILENT PUSHDTOHOME
setopt cdablevars

# Try to correct command line spelling
# setopt CORRECT CORRECT_ALL
#
# Disable autocorrect
unsetopt correct_all

# Enable extended globbing
setopt EXTENDED_GLOB

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# functions
if [ -e "$HOME/.functions/functions" ]; then
  source "$HOME/.functions/functions"
fi

# PATH stuff
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$HOME/.cask/bin:$PATH"

export PATH="/opt/boxen/rbenv/shims:/opt/boxen/rbenv/bin:/opt/boxen/ruby-build/bin/opt/boxen/heroku/bin:$PATH"

# Composer
export PATH="$PATH:$HOME/.composer/vendor/bin"


[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
