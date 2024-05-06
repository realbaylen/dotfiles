#            _              
#           | |             
#    _______| |__  _ __ ___ 
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__ 
# (_)___|___/_| |_|_|  \___|
# Baylen's .zshrc, created 4.29.24

bindkey -v # Vi-mode

# Add vi-like bindings
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Add command-editing in vim
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Case-insensitive TAB-completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Load other aliases and functions if present
[ -f "$HOME/.config/shell/aliases.sh" ] && \
  source "$HOME/.config/shell/aliases.sh"
[ -f "$HOME/.config/shell/functions.sh" ] && \
  source "$HOME/.config/shell/functions.sh"
[ -f "$HOME/.config/shell/functions/*" ] && \
  source "$HOME/.config/shell/functions/*"
[ -f "$HOME/.config/shell/aliases/*" ] && \
  source "$HOME/.config/shell/aliases/*"

# Aliases
alias rsh='source $HOME/.zshrc'
alias nav='navi'
alias weather='curl wttr.in'
alias mu='ncmpc'
alias yt='ytfzf'
alias ..='cd ..'
alias w3m='w3m -o confirm_qq-false'
alias email='neomutt'

# WeeChat
alias irc='weechat'

# Newsraft
alias n='newsraft'


# Check if nvim is installed
if command -v nvim &>/dev/null; then
	alias v='nvim'
	alias vi='nvim'
	alias vim='nvim'
fi

# ls
if ls --version >/dev/null 2>&1; then # GNU
	alias ls='ls -A -h -p --color=auto --group-directories-first'
else # Non-GNU
	alias ls='ls -Ahp --color=auto'
fi

alias ll='ls -l'               # Display long ls
alias grep='grep --color=auto' # Add color to grep
alias mkdir='mkdir -pv'        # Always create parent directories and be verbose
alias mk='mkdir -pv'           # mk is short for mkdir
alias cp='cp -iv'              # Always ask for confirmation and be verbose
alias mv='mv -iv'              # Always ask for confirmation and be verbose
alias rm='rm -iv'

# Plugins
if [ -f "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then 
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# zoxide (Must be at the end of file)
eval "$(zoxide init zsh)"

# Starship prompt
#eval "$(starship init zsh)"
