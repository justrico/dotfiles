alias gat="gat -p"

export GAT_THEME="catppuccin-macchiato"

function gess() {
    gat --force-color "$@" | less -R
}
