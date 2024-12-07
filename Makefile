TARGET = ~
DOTFILES = aliases bash_profile bashrc gitconfig pythonrc.py tmux.conf vimrc

all: $(DOTFILES)

$(DOTFILES):
	@cp -v -r -f $(CURDIR)/$@ $(TARGET)/.$@

.PHONY: $(DOTFILES)
