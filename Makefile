all:
	rm -rf ~/.config/nvim/
	cp -r ./AtmoVim ~/.config/
	mv ~/.config/AtmoVim ~/.config/nvim
