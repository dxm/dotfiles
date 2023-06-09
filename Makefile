CURDIR ?= $(. CURDIR)
TARGET = ~
dotfiles = aliases \
		   bash_profile \
		   bashrc \
		   curlrc \
		   gitconfig \
		   oracle \
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
	elif [ -d $(CURDIR)/$@ ];then \
		if [ ! -d $(TARGET)/.$@ ];then \
			install -d $(TARGET)/.$@ ; \
	    fi; \
		cp -v -r -f $(CURDIR)/$@/* $(TARGET)/.$@/ ; \
	fi

.PHONY: install-dotfiles $(dotfiles)
