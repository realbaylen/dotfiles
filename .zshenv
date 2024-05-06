#                __                   
#    ____  _____/ /_  ___  ____ _   __
#   /_  / / ___/ __ \/ _ \/ __ \ | / /
#  _ / /_(__  ) / / /  __/ / / / |/ / 
# (_)___/____/_/ /_/\___/_/ /_/|___/  
# Created April 29, 2024 °˖✧◝(⁰▿⁰)◜✧˖°

# Default programs
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="firefox"

# Some directories
export SCREENSHOTS_DIR="$XDG_PICTURES_DIR/Screenshots"
export WALLPAPERS_DIR="$XDG_PICTURES_DIR/Wallpapers"
export SCRIPTS_DIR="$HOME/Scripts"

export MANPAGER="nvim +Man!"

# Zsh environment variables
export ZDOTDIR=$HOME                    # Use $HOME for Zsh configuration files
export PS1="%n@%m %1~ %# "              # Zsh Prompt (default macOS Zsh prompt)
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file
export KEYTIMEOUT=1

# fzf configuration
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_COLORS="bg+:-1,\
fg:gray,\
fg+:white,\
border:black,\
spinner:0,\
hl:yellow,\
header:blue,\
info:green,\
pointer:red,\
marker:blue,\
prompt:gray,\
hl+:red"

export FZF_DEFAULT_OPTS="--height 100% \
--border sharp \
--layout reverse \
--color '$FZF_COLORS' \
--prompt '∷ ' \
--pointer > \
--marker ⇒"

export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -n 10'"
export FZF_COMPLETION_DIR_COMMANDS="cd pushd rmdir tree ls"

# XDG Base Directory environment variables
if [ -z "$XDG_CONFIG_HOME" ] ; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi
if [ -z "$XDG_DATA_HOME" ] ; then
    export XDG_DATA_HOME="$HOME/.local/share"
fi
if [ -z "$XDG_CACHE_HOME" ] ; then
    export XDG_CACHE_HOME="$HOME/.cache"
fi

# Plan9 environment variables
if [ -d "$HOME/plan9" ]; then
  export PLAN9="/Users/baylen/plan9"
  export PATH="$PATH:$PLAN9/bin"
fi

# MacPorts
if [ -d "/opt/local/bin" ]; then
  export PATH="$PATH:/opt/local/bin:/opt/local/sbin"
fi

# Homebrew 
if [ -d "/opt/homebrew/bin" ]; then
  export PATH="$PATH:/opt/homebrew/bin"
fi

# Python
if [ -d "/Library/Frameworks/Python.framework/Versions/3.12/bin" ]; then
  export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.12/bin"
fi

# Go
if [ -d "$HOME/go" ]; then
  export GOPATH="$HOME/.go"
  export GOBIN="$HOME/.go/bin"
fi

#
export PATH="$PATH:$SCRIPTS_DIR"

#  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠤⠒⠈⠉⠉⠉⠉⠒⠀⠀⠤⣀⠀⠀⠀⠀
#  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠁⠀⠀⠀⠀⠀⠀⢀⣄⠀⠀⠀⠀⠑⡄⠀⠀
#  ⠀⠀⠀⠀⠀⠀⠀⠀⠰⠿⠿⠿⠣⣶⣿⡏⣶⣿⣿⠷⠶⠆⠀⠀⠘⠀
#  ⠀⠀⠀⠀⠀⠀⠠⠴⡅⠀⠀⠠⢶⣿⣿⣷⡄⣀⡀⡀⠀⠀⠀⠀⠀⡇⠀
#  ⠀⣰⡶⣦⠀⠀⠀⡰⠀⠀⠸⠟⢸⣿⣿⣷⡆⠢⣉⢀⠀⠀⠀⠀⠀⠀⠀⠀
#  ⠀⢹⣧⣿⣇⠀⠀⡇⠀⢠⣷⣲⣺⣿⣿⣇⠤⣤⣿⣿⠀⢸⠀⣤⣶⠦⠀⠀
#  ⠀⠀⠙⢿⣿⣦⡀⢇⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⡜⣾⣿⡃⠇⢀⣤⡀⠀
#  ⠀⠀⠀⠀⠙⢿⣿⣮⡆⠀⠙⠿⣿⣿⣾⣿⡿⡿⠋⢀⠞⢀⣿⣿⣿⣿⣿⡟⠁
#  ⠀⠀⠀⠀⠀⠀⠛⢿⠇⣶⣤⣄⢀⣰⣷⣶⣿⠁⡰⢃⣴⣿⡿⢋⠏⠉⠁⠀⠀⠀
#  ⠀⠀⠀⠀⠀⠀⠀⠠⢾⣿⣿⣿⣞⠿⣿⣿⢿⢸⣷⣌⠛⠋⠀⠘⠀⠀⠀⠀
