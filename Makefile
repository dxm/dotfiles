CURDIR ?= $(. CURDIR)
TARGET = ~
USER := $(echo $$USER)
dotfiles = aliases \
	bash_profile \
	bashrc \
	curlrc \
	gitconfig \
	pythonrc.py \
	tclshrc \
	tmux.conf \
	test \
	vimrc \
	Xresources


install-dotfiles: $(dotfiles)

$(dotfiles):
	@if [ -f $(CURDIR)/$@ ];then \
		cp -v -f $(CURDIR)/$@ $(TARGET)/.$@ ; \
	fi

.PHONY: install-dotfiles $(dotfiles)
