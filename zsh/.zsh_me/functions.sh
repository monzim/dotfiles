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
