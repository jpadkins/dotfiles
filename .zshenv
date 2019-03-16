# local bin
export PATH="$HOME/.local/bin:$PATH"
# rbenv
eval "$(rbenv init -)"
# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
# rustup
export PATH="$HOME/.cargo/bin:$PATH"
# go
#export GOPATH="$HOME/.go"
#export PATH="$HOME/.go/bin:$PATH"
# rtv
export RTV_BROWSER=elinks
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# gvm
# [[ -s "/home/jpadkins/.gvm/scripts/gvm" ]] &&
#	source "/home/jpadkins/.gvm/scripts/gvm"
