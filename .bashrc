alias ww='pmset -g batt'
alias ll='ls -altrh'
alias bl='ls -altrh | less'
alias doch='sudo $(history -p !-1)'
alias gitlog='git log --pretty=oneline --abbrev-commit --graph --decorate --all'
alias zshshell='chsh -s /bin/zsh'
. ~/.bash.d/cht.sh
cht.sh -help
echo "   searching with:  /~snapshot/r   look for snapshot in all cheat sheets"

source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k
