CURDIR ?= $(. CURDIR)
TARGET = ~
USER := $(echo $$USER)
dotfiles = aliases \
	bash_profile \
	bashrc \
	gitconfig \
	pythonrc.py \
	tclshrc \
	tmux.conf \
	vimrc \
	Xresources


install-dotfiles: $(dotfiles)

$(dotfiles):
	@if [ -f $(CURDIR)/$@ ];then \
		cp -v -f $(CURDIR)/$@ $(TARGET)/.$@ ; \
	fi

.PHONY: install-dotfiles $(dotfiles)
