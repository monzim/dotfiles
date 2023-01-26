# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/lib/pkgconfig
ZSH_THEME="powerlevel10k/powerlevel10k"



# My Added Path
export PATH="$PATH:/home/monzim/Application/Development/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
export ANDROID_HOME=/home/monzim/Application/Development/Android/Sdk/
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH="$PATH":"$HOME/Application/Development/flutter/.pub-cache/bin"
export PATH=$PATH:/home/monzim/Application/Development/go/bin

# export PATH="$PATH":"$HOME/Application/Development/go/bin"


# export PATH="$PATH:/var/lib/Android/Sdk/emulator"



# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME="spaceship"
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions sudo zsh-syntax-highlighting web-search copypath copyfile copybuffer )

source /home/monzim/.oh-my-zsh/plugins/
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# On-demand rehash
zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

add-zsh-hook -Uz precmd rehash_precmd

# omz
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="thunar ~/.oh-my-zsh"

# ls
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'
alias vs='code .'

# git
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# ****My___Alias*****
alias appw='appwrite'
alias awf='appwrite functions'

alias dc='docker-compose'
alias dockerUp='docker-compose up'
alias dockerDown='docker-compose down'
alias dockerUpBg='docker-compose up -d'
alias doc='docker'
alias nv='nvim'
alias plz='sudo'
alias please='sudo'
alias c='clear'
alias wh='which'

alias polyconfig='nvim ~/.config/polybar'
alias bspwmconfig='nvim ~/.config/bspwm/bspwmrc'
alias sxhconfig='nvim ~/.config/sxhkd/sxhkdrc'
alias picomconfig='nvim ~/.config/bspwm/picom.conf'
alias nvimconfig='nvim /home/monzim/.config/nvim'
alias dotconfig='nvim /run/media/monzim/CodeX/Dotfiles'
alias alasrconfig='nvim /run/media/monzim/CodeX/NVIM/Al-‘Asr_vim'

alias gocode='cd /home/monzim/CodeX'
alias dotfiles='cd //home/monzim/Dotfiles/'
alias goang='cd /home/monzim/CodeX/Angular'
alias goflt='cd /home/monzim/CodeX/Flutter'
alias gohub='cd /home/monzim/CodeX/Github'

alias start_vm_service='systemctl start libvirtd.service; systemctl is-active libvirtd.service; sudo virsh net-start default; sudo virsh net-list --all'

pac(){
if [[ $2 == '-i' ]]; then
  echo "Installing $1 😊"
  sudo pacman -S $1
  notify-send 'Pacman: ' "$1 installed  😊"
elif [[ $2 == '-s' ]]; then
  yay -Ss $1 | grep $1
  notify-send 'yay: ' "$1 installed  😊"


elif [[ $2 == '-a' ]]; then
  echo "Install >>$1<< from aur 😀"
  yay -S $1
  notify-send 'Package' "$1 installed  😀"


elif [[ $2 == '-r' ]]; then
  echo "Removing 😔 $1"
  sudo pacman -R $1
  sudo pacman -Rsn $(pacman -Qdtq)
  notify-send 'Pacman: ' "$1 removed  😔"



elif [[ $2 == '-rr' ]]; then
   yay -R $1
   sudo pacman -Rsn $(pacman -Qdtq)
    notify-send 'Package' "$1 removed  😔"


else
  pacman -Ss $1 | grep $1


fi

}


find_alias() {
		zsh -ixc : 2>&1 |grep "$1"
}

# git_Related
# alias git-watch='gh run watch -i1 && notify-send "run is Done"'
# Git-New-Commit and Push
git-new-commit() {    
	git add .
	git commit -m "$1"
	git push -u
	git log --oneline
  notify-send 'New Commit Add and Pushed'
}


# ADB Emulator
adb-tv-29(){
cd /var/lib/Android/Sdk/emulator
./emulator -avd Android_TV_720p_API_29 & disown
notify-send 'Emulator' 'Android_TV_720p_API_29 is Running'
exit


}


# adb-p3a-xl-29() {
#   cd /var/lib/Android/Sdk/emulator
#   ./emulator -avd Pixel_3a_XL_API_29 & disown
# 	exit
# }

adb-tab-29() {
  cd /home/monzim/Application/Development/Android/Sdk/emulator
  ./emulator -avd Pixel_C_API_29 & disown
  notify-send 'Emulator' 'Pixel_C_API_29 is Running'
	exit
}

adb-p5-29() {
  cd /home/monzim/Application/Development/Android/Sdk/emulator
  ./emulator -avd Pixel_5_API_29 & disown
  notify-send 'Emulator' 'Pixel_5_API_29 is Running'
	exit
}

adb-p6(){
  cd /var/lib/Android/Sdk/emulator
  ./emulator -avd Pixel_6_Pro_API_33 & disown
  notify-send 'Emulator' 'Pixel_6_Pro_API_33 is Running'
  exit
}

launch() {
  cd /var/lib/Android/Sdk/emulator
  ./emulator -avd $1 & disown
  notify-send 'Emulator' "$1 is Running"
  exit
}

# connection with TCP and adb Devices with wifi Debugging 
connect-adb(){
	adb devices
	adb tcpip 5555
	adb connect 10.9.50.3:5555
  notify-send 'Devices Connecting' 'Connected to 10.9.50.3:5555'
}
connect-device(){
	adb devices
	adb tcpip $1
	adb connect 10.9.50.5:$1
  notify-send 'Devices Connecting' 'Connected to 10.9.50.$1'

}
#*****Flutter****
flpc(){
	flutter clean
	flutter pub get
  notify-send  'Flutter Pub Clean and Get ' 'Done'

}

runc(){
  notify-send 'Flutter Run' 'Chrome is Running'

if [[ $1 == '-s' ]]; then
   flutter run -d chrome --web-port $2
elif [[ $1 == '-d' ]]; then
      flutter run -d chrome --web-port 40501

else
 flutter run -d chrome

fi

  notify-send 'Flutter Run' 'Chrome is stopped!'
}

tcp_port(){
  if [[ $1 == '-s' ]]; then
   adb reverse tcp:$2 tcp:$2
   else
    adb reverse tcp:40501 tcp:40501
    
  fi
  notify-send 'TCP Port reverse for ANDROID'
}

# FVM alias f="fvm flutter"
alias d="fvm dart"

ffpc(){
	fvm flutter clean
	fvm flutter pub get
  notify-send 'FVM Flutter Pub Clean and Get ' 'Done'
}

frunc(){
	fvm flutter run -d chrome
  notify-send 'FVM Flutter Run' 'Chrome is Running'
}

# GetX_CLI
page-get(){
	get create page:$1
  notify-send 'GetX' "$1 "'Page Created'
}

view-get(){
	get create view:$1 on $2
  notify-send 'GetX'  "$1 "'View Created' on $2
}

ctl-get(){
	get create controller:$1 on $2
  notify-send 'GetX'  "$1 "'Controller Created' on $2

}
provider-get(){
	get create provider:$1 on $2
  notify-send 'GetX'  "$1 "'Provider Created' on $2
}

# Clean Ram
ram_cln(){
	free -h
	sudo sh -c 'echo 1 >  /proc/sys/vm/drop_caches'
	sudo sh -c 'echo 2 >  /proc/sys/vm/drop_caches' 
	free -h
  notify-send 'Ram Clean' 'Cleaned'


}

# Start Virtual Machine and Network
start_vm_engine(){
  systemctl start libvirtd.service
  systemctl is-active libvirtd.service
  sudo virsh net-start default
  sudo virsh net-list --all
}


stop_port(){
    echo "Stopping all ports"
    echo ">>Auth 9099"
    lsof -ti tcp:9099 | xargs kill -9
    echo ">>Database 9000"
    lsof -ti tcp:9000 | xargs kill -9
    echo ">>Firestore 8080"
    lsof -ti tcp:8080 | xargs kill -9
    echo ">>Storage 9199"
    lsof -ti tcp:9199 | xargs kill -9
    echo ">>Functions 5001"
    lsof -ti tcp:5001 | xargs kill -9
    echo ">>Hosting 5000"
    lsof -ti tcp:5000 | xargs kill -9
    echo ">>Pubsub 8085"
    lsof -ti tcp:8085 | xargs kill -9
    notify-send 'All Ports' 'Stopped'
}

fpa(){
 flutter pub add $1
  notify-send 'Flutter Pub Add' "$1 "'Added'
#  notify-send 'Added to project'
}

updateMe(){
  echo ">>Updating Full System"
  sudo pacman -Syyu
  yay
  brew update
  brew upgrade
  notify-send "Pacman" "Full System Update Done"
}

rf(){
 rm -rf $1
}

ng_add_tailwind(){
  npm install -D tailwindcss postcss autoprefixer
  npx tailwindcss init
  echo "https://tailwindcss.com/docs/guides/angular"

}

git_fetch_r_all(){
  git branch -r | grep -v '\->' | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
  git fetch --all
  git pull --all
}


#appwrite functions createDeployment --functionId $uuid --entrypoint lib/main.dart --code functions/$1 --activate true
	
awDartfunc(){
  uuid=$(uuidgen)
  uuid_short=${uuid:0:12}
  appwrite functions create --functionId $uuid_short --name $1 --runtime dart-2.17 --execute team:server
  appwrite functions createVariable --functionId $uuid_short --key HOST_NAME --value http://10.9.50.2/v1
  appwrite functions createVariable --functionId $uuid_short --key SECRET_KEY --value add_the_key_here
  appwrite functions createVariable --functionId $uuid_short --key PROJECT_ID --value add_project_id_here

  # Generate the Mason file using the shortened UUID
  mason make appwrite --name $1 --id $uuid_short -o functions
  echo
  echo "$1 Appwrite function Added"
}


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
## [Completion] 
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/monzim/.dart-cli-completion/zsh-config.zsh ]] && . /home/monzim/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

