# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# DOTFILES-DIR
DOTFILES_DIR="$HOME/.dotfiles"

# Make utilities available
PATH="$DOTFILES_DIR/bin:$PATH"

# Source the dotfiles (order matters)
for DOTFILE in "$DOTFILES_DIR"/system/.{function,function_*,path,env,alias,grep,prompt-zsh,nvm,completion,custom,z}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

# Set LSCOLORS
source "$DOTFILES_DIR/bin/setup-z"
#eval "$(dircolors -b "$DOTFILES_DIR"/system/.dir_colors)"

# Export
export DOTFILES_DIR DOTFILES_EXTRA_DIR
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=/Users/michael/.meteor:$PATH
