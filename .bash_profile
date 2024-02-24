export PATH=$HOME/.local/bin:$PATH
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache
export HISTFILE="$XDG_DATA_HOME"/bash/history
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export ANDROID_HOME="$XDG_DATA_HOME"/android
export XDG_CURRENT_DESKTOP=sway
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GVIMINIT='let $MYGVIMRC="$XDG_CONFIG_HOME/vim/gvimrc" | source $MYGVIMRC'
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export EDITOR='emacs -nw'

if
	[ -z "$XDG_RUNTIME_DIR" ]; then
	XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"

	mkdir -pm 0700 "$XDG_RUNTIME_DIR"
	export XDG_RUNTIME_DIR
fi


if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
	dbus-run-session -- sway
fi
