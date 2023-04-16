# Created by newuser for 5.9
eval "$(starship init zsh)"

alias la="exa -al"
alias ls="exa -l"

# better search
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

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

host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
alias socks="ALL_PROXY=socks5://$host_ip:1089"


export PATH="$HOME/.cargo/bin/:$PATH"
