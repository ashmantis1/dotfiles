#
# ~/.bashrc
#
[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

source /etc/bash_completion
#source <(kubectl completion bash)
eval "$(fzf --bash)"
eval `ssh-agent -s` > /dev/null
ssh-add /home/asher/.ssh/mainkey &> /dev/null
# Env variables
export KUBE_EDITOR='nvim --remote'
export KUBECONFIG=~/.kube/config/combined.yaml
export VAULT_ADDR="https://vault01.infra.ashman.world"
#export EDITOR='nvr --remote-wait'
export ANSIBLE_VAULT_PASSWORD_FILE=~/.ssh/vault-pass.sh
PATH=${KREW_ROOT:-$HOME/.krew}/bin:$HOME/.local/bin:/home/linuxbrew/.linuxbrew/bin:$PATH
# Aliases
alias k=kubectl
#alias kn='kubectl config set-context --current --namespace' 
alias kn='kubens'
alias kg='kubectl get'
alias kc='kubectx' 
alias vi=nvim
alias vim=nvim
alias copy="xclip -sel clip"
alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias kns='kubectl create ns nodeshell; kubectl node-shell -n nodeshell'
# Terminal display configuration
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[32;47m\]\\[\e[m\]$ "
alias bwu='export BW_SESSION=$(bw unlock --raw)'
#kubectx and kubens
export PATH=~/.kubectx:$PATH

source ~/.ssh/.restic-env

