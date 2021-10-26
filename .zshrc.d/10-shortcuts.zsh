# General
alias ctfdock="docker run --rm -v $PWD:/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name ctf -i ctf:ubuntu19.10"

alias :e="nvim"
alias v="nvim"
alias vim="nvim"
alias Fmt=fmt # Used in Vim, as I mistype !fmt as !Fmt sometimes...

# Website stuff

## Website database aliases
alias lmysqlsh5="mysqlsh em@localhost/EventManagement4"
alias lmysqlsh="mysqlsh em@localhost/EventManagementv6"
alias mysqlsh6="mysqlsh arioux@192.168.1.3/EventManagementv6"
alias pmysqlsh="mysqlsh arioux@192.168.1.3/EventManagementv6"
alias dmysqlsh="mysqlsh arioux@192.168.1.3/EventManagementv6Dev"

## Website code aliases
# alias bw="npm run build -- --watch"
alias bw="docker-compose -f docker-compose.dev.yml up -d build-watch && docker attach typescript-capunit_build-watch_1"
alias bws="npm run build -- --watch --project tsconfig.build.json"
alias b="npm run build"
alias bp="lerna run build --parallel --ignore client --ignore auto-client-api --ignore apis --ignore auto-api-tests --ignore server-jest-config -- --watch"
alias bpl="lerna run build --parallel --ignore client --since master -- --watch"
alias bic="lerna run build --ignore client"
alias vers="lerna version --create-release github --no-push --conventional-commits --sign-git-commit --yes"
alias versp="vers && git push"

alias grep='grep --color=always'
alias xclip='xclip -selection clipboard'

alias grab="scrot -s '/home/arioux/Pictures/%Y-%m-%d-%H-%M-%S_$wx$h.png'"

alias pcheck="prettier --check \"src/**/*.ts\" \"src/**/*.tsx\""
alias pwrite="prettier --write \"src/**/*.ts\" \"src/**/*.tsx\""

# Personal stuff
alias mprivate='sudo cryptsetup open /dev/sdb2 PRIVATE ; sudo mount /dev/mapper/PRIVATE /mnt/PRIVATE'
alias mkeys='sudo cryptsetup open /dev/sdb3 KEYS ; sudo mount /dev/mapper/KEYS /mnt/KEYS'
alias mudata='sudo mount /dev/sdb1 /mnt/DATA'
alias mdata='sudo mount /data'
alias uprivate='sudo umount /dev/mapper/PRIVATE && sudo cryptsetup close PRIVATE'
alias ukeys='sudo umount /dev/mapper/KEYS && sudo cryptsetup close KEYS'
alias uudata='sudo umount /mnt/DATA'
alias udata='sudo umount /data'

# Music aliases
alias ncmpcpp="ncmpcpp --host=password@127.0.0.1"
alias n="ncmpcpp"
alias nr="mpc -h password@127.0.0.1 repeat"
alias nz="mpc -h password@127.0.0.1 random"
alias nzr="nz; nr"
alias nrq="nr; q"
alias nzq="nz; q"
alias nzrq="nr; nz; q"
alias nrzq="nr; nz; q"
alias voli="amixer -D pulse sset Master 5%+ > /dev/null"
alias vold="amixer -D pulse sset Master 5%- > /dev/null"
function vols(){
	amixer -D pulse sset Master "$1%" > /dev/null
}
alias pl="mpc toggle --host=password@127.0.0.1 > /dev/null"
alias next="mpc next --host=password@127.0.0.1 > /dev/null"
alias prev="mpc prev --host=password@127.0.0.1 > /dev/null"

# Git aliases
alias a="git add"
alias s="git status"
function as() {
	git add $1
	git status
}
alias cz="git cz -S"
alias c="git commit -S"
alias di="git diff"
alias p="git push"
alias P="git pull"
alias Pp="git pull && git push"

# Configuration
alias so="source ~/.zshrc"
alias vz="nvim ~/.zshrc && source ~/.zshrc"
alias vzq="nvim ~/.zshrc && q"
alias v3="nvim ~/.config/i3/config && i3-msg restart"
alias v3q="nvim ~/.config/i3/config && i3-msg restart && q"
alias vv="nvim ~/.config/nvim/init.vim"

# Programs
alias no="node"

# Exiting
alias eixt="exit"
alias exot="exit"
alias eoxit="exit"
alias eoxt="exit"
alias euxt="exit"
alias exut="exit"
alias xit="exit"
alias q="exit"
alias :wq='exit'
alias quit='exit'
alias :q='exit'
alias \quit='exit'
alias \\quit='exit'
alias exi="exit"
alias qexit="exit"

# Browser settings
alias defbrowse="xdg-settings get default-web-browser"
alias defvivaldi="xdg-settings set default-web-browser vivaldi-stable.desktop"
alias defchrome="xdg-settings set default-web-browser chromium.desktop"
alias deffirefox="xdg-settings set default-web-browser firefox.desktop"

alias ls='exa'
alias ll='exa -l'

alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
