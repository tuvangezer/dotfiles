export PS1='\w\$ '

mk () {
	mkdir -p "$@" && cd "$@"
}


pathmunge () {
	if ! echo "$PATH" | grep -Eq "(^|:)$1($|:)" ; then
		if [ "$2" = "after" ] ; then
			export PATH=$PATH:$1
		else
			export PATH=$1:$PATH
		fi
	fi
}

pathmunge . after

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi
