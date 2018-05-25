URL ?= 'http://vim-bootstrap.com/generate.vim'
LANGS ?= 'langs=c&langs=elixir&langs=erlang&langs=go&langs=html&langs=javascript&langs=lua&langs=perl&langs=php&langs=python&langs=ruby&langs=rust&langs=scala&editor=vim'
VIMRC ?= bootstrap.vimrc

bootstrap-vim:
	curl $(URL) --data $(LANGS) > $(VIMRC)

install: clean bootstrap-vim
	cp $(VIMRC) ~/.vimrc
	cp local.vimrc ~/.vimrc.local

clean:
	rm -Rf ~/.vim*
