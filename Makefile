all: build

sync:
	[ -f ~/.vim/bundle/Vundle.vim ] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	[ -f ~/.vimrc ] || ln -s $(PWD)/.vimrc ~/.vimrc

clean:
	rm -f ~/.vimrc
	rm -rf ~/.vim/bundle/Vundle.vim

.PHONY: all clean sync build run kill
