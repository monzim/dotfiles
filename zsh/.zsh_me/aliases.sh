# open dotfiles in vscode
alias dotConfig=code /Users/monzim/dotfiles/zsh

# newvim alias
alias nv='nvim'
alias nn='nvim .'

# Docker Compose Aliases
alias doc='docker compose # Short for "docker compose"'
alias docb='docker compose build # Build Docker Compose services'
alias docd='docker compose down # Stop and remove Docker Compose containers'
alias doce='docker compose exec # Execute a command in a Docker Compose service'
alias docl='docker compose logs # View logs of Docker Compose services'
alias doclf='docker compose logs -f # View and follow logs of Docker Compose services'
alias docr='docker compose run # Run a one-off command in a Docker Compose service'
alias docre='docker compose restart # Restart Docker Compose services'
alias docrm='docker compose rm # Remove stopped Docker Compose containers'
alias docs='docker compose stop # Stop Docker Compose services'
alias docu='docker compose up # Start Docker Compose services'
alias docuf='docker compose up -d --force-recreate # Start Docker Compose services with force-recreation'
alias docud='docker compose up -d # Start Docker Compose services in the background'
alias docdv='docker compose down --volumes --remove-orphans # Stop and remove Docker Compose containers with volumes and orphans'
alias docps='docker compose ps # List Docker Compose services'

# Docker Network Aliases
alias dnet='docker network # Short for "docker network"'
alias dnetls='docker network ls # List Docker networks'
alias dnetcr='docker network create # Create a Docker network'
alias dnetrm='docker network rm # Remove a Docker network'
alias dnetins='docker network inspect # Inspect a Docker network'

# Docker Compose Aliases
alias compose='docker compose'
alias combuild='docker compose build'
alias comdown='docker compose down'
alias comexec='docker compose exec'
alias comlogs='docker compose logs'
alias comlogsfollow='docker compose logs -f'q
alias comrun='docker compose run'
alias comrestart='docker compose restart'
alias comrm='docker compose rm'
alias comstop='docker compose stop'
alias comup='docker compose up'
alias comupforcerecreate='docker compose up -d --force-recreate'
alias comupbackground='docker compose up -d'
alias comdownvolumesorphans='docker compose down --volumes --remove-orphans'
alias comps='docker compose ps'

# Docker Network Aliases
alias dockernetwork='docker network'
alias networkls='docker network ls'
alias networkcreate='docker network create'
alias networkrm='docker network rm'
alias networkinspect='docker network inspect'

# General
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

# ****My___Alias*****
alias appw='appwrite'
alias awf='appwrite functions'
alias doc='docker'
alias nv='nvim'
alias plz='sudo'
alias please='sudo'
alias c='clear'
alias wh='which'

# File Aliases
alias gocode='cd /Users/monzim/CodeX'
alias godot='cd /Users/monzim/Downloads'
alias gostartup='cd /Users/monzim/CodeX/startup'
alias dotfiles='cd /Users/monzim/dotfiles/'
alias goflt='cd /Users/monzim/CodeX/Flutter'
alias gohub='cd /Users/monzim/CodeX/Github'
alias gonext='cd /Users/monzim/CodeX/NextJs'

# HOST Aliases
# Function to show all your hosts
show_hosts() {
  echo "Your current hosts:"
  cat /etc/hosts
}

# Function to add a new host
add_host() {
  if [ $# -ne 2 ]; then
    echo "Usage: add_host <IP> <hostname>"
    return 1
  fi

  IP=$1
  HOSTNAME=$2

  echo "$IP $HOSTNAME" | sudo tee -a /etc/hosts
  echo "Host $HOSTNAME added with IP $IP"
}

# Function to remove a selected host
remove_host() {
  if [ $# -ne 1 ]; then
    echo "Usage: remove_host <hostname>"
    return 1
  fi

  HOSTNAME=$1

  # Remove the line with the specified hostname from the hosts file
  sudo sed -i -e "/$HOSTNAME/d" /etc/hosts
  echo "Host $HOSTNAME removed"
}

# Function to reset the hosts file to the original state
reset_hosts() {
  if [ -e /etc/hosts.bak ]; then
    sudo cp /etc/hosts.bak /etc/hosts
    echo "Hosts file reset to the original state"
  else
    echo "No backup file found. Run 'addhost' to create a backup before resetting."
  fi
}

loopme() {
  local limit="$1" # The iteration limit
  local task="$2"  # The task as a command or Bash input string

  for ((i = 1; i <= limit; i++)); do
    eval "$task" # Execute the task using eval
  done
}

# Alias to show all hosts
alias showhosts="show_hosts"

# Alias to add a new host
alias addhost="add_host"

# Alias to remove a selected host
alias removehost="remove_host"

# Alias to reset the hosts file
alias resethosts="reset_hosts"
