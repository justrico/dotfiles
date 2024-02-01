bindkey -v
bindkey -M vicmd '^v' edit-command-line
bindkey -M vicmd "n" vi-insert
bindkey -M vicmd "N" vi-insert-bol
bindkey -M vicmd "j" vi-backward-char
bindkey -M vicmd "l" vi-forward-char
bindkey -M vicmd "J" vi-beginning-of-line
bindkey -M vicmd "L" vi-end-of-line
bindkey -M vicmd "b" vi-backward-blank-word
bindkey -M vicmd "w" vi-forward-blank-word
bindkey -M vicmd "k" down-line-or-history
bindkey -M vicmd "i" up-line-or-history
# bindkey -M vicmd "u" undo
bindkey -M vicmd "^j" backward-kill-line
bindkey -M vicmd "^l" vi-change-eol
bindkey -M vicmd "=" vi-repeat-search
bindkey -M vicmd "h" vi-forward-word-end

bindkey "^[l" autosuggest-accept  # alt+l accept zsh-autosuggetstion

# Change cursor style between normal mode and cmd mode
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
 echo -ne '\e[5 q'
}

_fix_cursor() {
 echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)


#zle -N zle-line-init
zle -N zle-keymap-select
