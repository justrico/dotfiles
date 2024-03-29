# p10k
#################################[ os_icon: os identifier ]##################################
typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND="#ffffff"
typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND="#367bf0"
# Custom icon.
typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION=' ' #

################################[ prompt_char: prompt symbol ]################################
# Green prompt symbol if the last command succeeded.
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND="#49aaee"
# Red prompt symbol if the last command failed.
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND="#f38ba8"
# Default prompt symbol.
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION=''

##################################[ dir: current directory ]##################################
# Current directory background color.
typeset -g POWERLEVEL9K_DIR_BACKGROUND="#cdd6f4"
# Default current directory foreground color.
typeset -g POWERLEVEL9K_DIR_FOREGROUND="#367bf0"
# Color of the shortened directory segments.
typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND="#367bf0"
# Color of the anchor directory segments. Anchor segments are never shortened. The first
# segment is always an anchor.
typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND="#367bf0"


# Kali WSL Kex
alias kexw="kex --win -s" # 窗口模式
alias kexws="kex --win --stop"
alias kexe="kex --esm -s" # 增强会话模式
alias kexes="kex --esm --stop"
alias kexs="kex --sl -s" # 无缝模式
alias kexss="kex --sl --stop"
