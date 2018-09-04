case $- in *i*) . ~/.bashrc;; esac
HISTFILESIZE=1000000000000000000000000000000

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
source ~/.iterm2_shell_integration.`basename $SHELL`
export PATH="/Users/immi/.minishift/cache/oc/v3.6.0:$PATH"
eval $(minishift oc-env)
export CLICOLOR=1

