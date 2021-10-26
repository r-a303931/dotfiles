export PATH=$PATH:~/.dotnet/tools:$HOME/bin:$HOME/.emacs.d/bin:$HOME/.npm-global/bin:$HOME/.local/bin
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk

export ZSH="/home/arioux/.oh-my-zsh"
export ZSH_THEME="crunch"
export plugins=(
	git
	node
	vi-mode
	sudo
	docker
	docker-compose
)
export TERM="xterm-256color"

export EDITOR=nvim
export VISUAL=nvim

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export DOTNET_CLI_TELEMETRY_OPTOUT=1

export BEAR_SOURCE_DIR=$HOME/Bear

export RUST_SRC_PATH="/home/arioux/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"

export NVM_DIR=$HOME/.nvm


export FILTER_BRANCH_SQUELCH_WARNING=1

export GPG_TTY=$(tty)

unsetopt SHARE_HISTORY INC_APPEND_HISTORY
setopt EXTENDED_HISTORY INC_APPEND_HISTORY_TIME HIST_FIND_NO_DUPS

export COMPOSE_DOCKER_CLI_BUILD=1
