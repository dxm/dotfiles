DOTFILES := alacritty.toml aliases bash_profile bashrc gitconfig pythonrc.py tclshrc tmux.conf vimrc

all: $(DOTFILES:%=~/.%)

~/.%: $(CURDIR)/%
	@cp -v -f $^ $@

.PHONY: all
