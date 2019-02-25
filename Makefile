all: build

sync:
	[ -f ~/.vim/bundle/Vundle.vim ] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	[ -f ~/.vimrc ] || ln -s $(PWD)/.vimrc ~/.vimrc
	vim +PluginInstall +qall!
	[ -f ~/.bash_profile ] || ln -s $(PWD)/.bash_profile ~/.bash_profile
	[ -f ~/.bashrc ] || ln -s $(PWD)/.bashrc ~/.bashrc
	source ~/.bash_profile
clean:
	rm -f ~/.vimrc
	rm -f ~/.bashrc
	rm -f ~/.bash_profile
	rm -rf ~/.vim/bundle/Vundle.vim

.PHONY: all clean sync build run kill
