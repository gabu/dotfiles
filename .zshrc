HISTFILE="$HOME/.zhistory"
HISTSIZE=100000
SAVEHIST=100000

PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
PATH=${PATH}:/home/gabu/bin
export PATH
export EDITOR=vim

autoload -U compinit
compinit

setopt append_history
setopt hist_ignore_space
setopt nobeep
setopt prompt_subst
setopt extended_glob
setopt no_flow_control
setopt print_eight_bit
setopt auto_cd
setopt autopushd
setopt pushd_ignore_dups
setopt auto_menu
setopt correct
setopt ignore_eof

#zstyle ':completion:*' verbose yes
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' list-colors ''
#zstyle ':completion:*:default' menu select=1
#zstyle ':completion:*:descriptions' format '%B%d%b'
#zstyle ':completion:*:messages' format '%d'
#zstyle ':completion:*:warnings' format 'No matches for: %d'
#zstyle ':completion:*' group-name ''

PROMPT=$'%{\e[34m%}%n@%m%{\e[m%}%{\e[m%} $ '
RPROMPT=$'%{\e[32m%}[%~]%{\e[m%}'

stty -istrip
bindkey -e

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^p' history-beginning-search-backward-end
bindkey '^n' history-beginning-search-forward-end

alias history='fc -Dil'
alias his='history | tail'

alias ls='ls -G -AF'
alias ll='ls -al'
alias l='ls -al'
alias rm='nocorrect rm -i'
alias cp='cp -ip'
alias mv='mv -i'
alias git='nocorrect git'

# original
alias st='screen -t'
