# This file sources all the other config files in the zsh directory

ZSH_DIR="$HOME/.zsh_me"

source $ZSH_DIR/aliases.sh
source $ZSH_DIR/path.sh
source $ZSH_DIR/functions.sh
source $ZSH_DIR/scripts.sh
source $ZSH_DIR/key_exports.sh

# Load Starship
# eval "$(starship init zsh)"
