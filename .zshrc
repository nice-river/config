# Created by newuser for 5.9
eval "$(starship init zsh)"

# better search
# bindkey "^[[A" history-beginning-search-backward
# bindkey "^[[B" history-beginning-search-forward
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# home end
bindkey "^[[H"  beginning-of-line
bindkey "^[[F"  end-of-line

#history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# case insensitive
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit


# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestionscmp
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# better Ctrl + W
my-backward-delete-word() {
    local WORDCHARS=${WORDCHARS/\//}
    zle backward-delete-word
}
zle -N my-backward-delete-word
bindkey '^W' my-backward-delete-word

alias la="exa -al"
alias ls="exa -l"

host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
alias socks="ALL_PROXY=socks5://$host_ip:1089"

export PATH="$HOME/.cargo/bin/:$PATH"

export DISPLAY=$host_ip:0



