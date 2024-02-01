# This file sources all the other config files in the zsh directory
ZSH_DIR="$HOME/.zsh_me"

# Load Starship
eval "$(starship init zsh)"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/monzim/.dart-cli-completion/zsh-config.zsh ]] && . /Users/monzim/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
