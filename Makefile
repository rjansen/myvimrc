URL ?= 'http://vim-bootstrap.com/generate.vim'
# LANGS ?= 'langs=c&langs=elixir&langs=erlang&langs=go&langs=html&langs=javascript&langs=lua&langs=perl&langs=php&langs=python&langs=ruby&langs=rust&langs=scala&editor=vim'
LANGS ?= 'langs=c&langs=elixir&langs=erlang&langs=go&langs=html&langs=javascript&langs=lua&langs=perl&langs=php&langs=python&langs=ruby&langs=rust&langs=scala&editor=vim'
VIMRC ?= bootstrap.vimrc

bootstrap-vim:
	curl $(URL) --data $(LANGS) > $(VIMRC)

install: clean
	cp $(VIMRC) ~/.vimrc
	cp local.vimrc ~/.vimrc.local
	cp local.vimrc.bundles ~/.vimrc.local.bundles

clean:
	rm -Rf ~/.vim*
