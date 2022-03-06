# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# My Added Path
export PATH="$PATH:/var/lib/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
#export PATH="$PATH:/var/lib/android-studio/bin"
export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
export ANDROID_HOME=/var/lib/Android/Sdk/
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

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
plugins=(git zsh-autosuggestions autojump sudo zsh-syntax-highlighting web-search copydir copyfile copybuffer )

source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh
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

# git
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# ****My___Alias*****
alias plz='sudo'
alias please='sudo'
alias c='clear'

alias polyconfig='code ~/.config/bspwm/polybar'
alias bspwmconfig='nvim ~/.config/bspwm/bspwmrc'
alias picomconfig='nvim ~/.config/bspwm/picom.conf'
alias nvimconfig='nvim /home/monzim/.config/nvim'
alias dotconfig='nvim /run/media/monzim/CodeX/Dotfiles'

alias gocode='cd /run/media/monzim/CodeX/'
alias dotfiles='cd /run/media/monzim/CodeX/Dotfiles'
alias goang='cd /run/media/monzim/CodeX/Angular'
alias goflt='cd /run/media/monzim/CodeX/Flutter'

alias start_vm_service='systemctl start libvirtd.service; systemctl is-active libvirtd.service; sudo virsh net-start default; sudo virsh net-list --all'

findpac(){

if [[ $2 == '-i' ]]; then
  echo "Installing $1 😊"
  sudo pacman -S $1
elif [[ $2 == '-s' ]]; then
  yay -Ss $1 | grep $1

elif [[ $2 == '-a' ]]; then
  echo "Install >>$1<< from aur 😀"
  yay -S $1

elif [[ $2 == '-r' ]]; then
  echo "Removing 😔 $1"
  sudo pacman -R $1

elif [[ $2 == '-rr' ]]; then
   yay -R $1

else
  pacman -Ss $1 | grep $1

fi

}


find_alias() {
		zsh -ixc : 2>&1 |grep "$1"
}

# git_Related
alias git-watch='gh run watch -i1 && notify-send "run is Done"'
# Git-New-Commit and Push
git-new-commit() {    
	git add .
	git commit -m "$1"
	git push -u
	git log --oneline

}


# ADB Emulator
adb-p2-xl-30(){
cd /var/lib/Android/Sdk/emulator
./emulator -avd Pixel_2_XL_API_30 & disown

}


adb-p5-32() {
  cd /var/lib/Android/Sdk/emulator
  ./emulator -avd Pixel_5_API_32 & disown
	exit
}

adb-tab-31() {
  cd /var/lib/Android/Sdk/emulator
  ./emulator -avd Pixel_C_API_32 & disown
	exit
}

adb-s21-fe() {
  cd /var/lib/Android/Sdk/emulator
  ./emulator -avd Galaxy_S21_FE_API_30 & disown
	exit
}

# connection with TCP and adb Devices with wifi Debugging 
connect-adb(){
	adb devices
	adb tcpip 5555
	adb connect 10.9.50.5:5555
}

#*****Flutter****
flpc(){
	flutter clean
	flutter pub get
}

runc(){
	flutter run -d chrome
}


# FVM
alias f="fvm flutter"
alias d="fvm dart"

ffpc(){
	fvm flutter clean
	fvm flutter pub get
}

frunc(){
	fvm flutter run -d chrome
}

# GetX_CLI
page-get(){
	get create page:$1
}

view-get(){
	get create view:$1 on $2
}

ctl-get(){
	get create controller:$1 on $2
}
provider-get(){
	get create provider:$1 on $2
}

# Clean Ram
ram_cln(){
	free -h
	sudo sh -c 'echo 1 >  /proc/sys/vm/drop_caches'
	sudo sh -c 'echo 2 >  /proc/sys/vm/drop_caches' 
	free -h

}

# Start Virtual Machine and Network
# start_vm_service(){
#   systemctl start libvirtd.start_vm_service
#   # systemctl is-active libvirtd.service
#   # sudo virsh net-start default
#   # sudo virsh net-list --all
# 
# }



