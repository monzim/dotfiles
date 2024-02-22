# Functions go here

# Flutter
flpc() {
	flutter clean
	flutter pub get
}

nvimeDelete() {
	# backup
	nvimBackup

	rm -rf ~/.config/nvim
	rm -rf ~/.local/share/nvim
	rm -rf ~/.cache/nvim

	# print what was deleted
	echo "Deleted:"
	echo "~/.config/nvim"
	echo "~/.local/share/nvim"
	echo "~/.cache/nvim"
}

nvimBackup() {
	cp -r ~/.config/nvim ~/.config/nvim.bak.$(date +%Y-%m-%d)
	cp -r ~/.local/share/nvim ~/.local/share/nvim.bak.$(date +%Y-%m-%d)
	cp -r ~/.cache/nvim ~/.cache/nvim.bak.$(date +%Y-%m-%d)

	# print what was backed up
	echo "Backed up:"
	echo "~/.config/nvim.bak.$(date +%Y-%m-%d)"
	echo "~/.local/share/nvim.bak.$(date +%Y-%m-%d)"
	echo "~/.cache/nvim.bak.$(date +%Y-%m-%d)"
}


ppadd() {
  # Get the custom alias name
  alias_name="$1"

  # Get the current directory as the default path
  dir_path=$(pwd)

  # Add the alias to .zshrc
  echo "alias $alias_name='cd $dir_path'" >> ~/.zshrc

  # Add the path to .zshrc (optional, based on your preference)
  # echo "export PATH=\$PATH:$dir_path" >> ~/.zshrc

  # Source .zshrc
  source ~/.zshrc

  echo "Alias '$alias_name' for current directory added successfully!"
}

premove() {
  # Get the alias name
  alias_to_remove="$1"

  # Check if alias exists
  if alias | grep -q "^$alias_to_remove=" ; then
    # Remove the alias from .zshrc
    sed -i "/^alias $alias_to_remove=/d" ~/.zshrc

    # Source .zshrc
    source ~/.zshrc

    echo "Alias '$alias_to_remove' removed successfully!"
  else
    echo "Error: Alias '$alias_to_remove' not found."
  fi
}
