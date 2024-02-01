# Paths go here
export PATH=/Users/monzim/.local/bin:$PATH

# Java Path
export JAVA_HOME=/opt/homebrew/opt/openjdk
export PATH=$JAVA_HOME/bin:$PATH
# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# GO
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# OpenJDK
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# For compilers to find openjdk you may need to set:
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# Flutter
export PATH="$PATH":"$HOME/Development/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

#Android Studio
export ANDROID_HOME="/Users/monzim/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# # vcpkg
# export VCPKG_ROOT="$HOME/Development/vcpkg"

# Others
# export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
# export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
