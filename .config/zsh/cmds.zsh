#! /usr/bin/env zsh

if [ -d "/home/linuxbrew" ]; then
    export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if [ -d "$HOME/.cargo" ]; then
    . "$HOME/.cargo/env"
fi

function detectcmd() {
    if command -v $1 > /dev/null 2>&1; then
        source $ZDOTDIR/cmdtools/$1.zsh
    fi
}

detectcmd "brew"
detectcmd "rustup"
detectcmd "eza"
detectcmd "git"
detectcmd "gat"
detectcmd "pnpm"
detectcmd "fzf"
