all: build

sync:
	[ -f ~/.vimrc ] || ln -s $(PWD)/.vimrc ~/.vimrc

clean:
	rm -f ~/.vimrc
