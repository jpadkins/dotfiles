
###############################################################################
## .zshrc
## A basic and clean zshell configuration with zplug
###############################################################################

###############################################################################
# zshell basic config
###############################################################################

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jpadkins/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

###############################################################################
# zplug
###############################################################################

source /usr/share/zplug/init.zsh
if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi
zplug load &> /dev/null

###############################################################################
# environment
###############################################################################

source $HOME/.zshenv

autoload -Uz promptinit
promptinit
prompt walters

###############################################################################
# aliases
###############################################################################

alias rm='trash-put'
#alias ls='ls --color'
alias ls='ls --color'
alias resrc='source $HOME/.zshrc'
alias wisdom='fortune | cowsay -f tux'
alias bandcamp-dl='bandcamp-dl --template="%{track}_%{title}"'
alias rbenv_update='cd "$(rbenv root)"/plugins/ruby-build && git pull && cd -'

###############################################################################
# scripts
###############################################################################

echo ''
fonts=('Bloody' '3d_diagonal' '3d' 'dietcola' 'fire_font-k' 'OS2' 	\
	'Poison' 'Rammstein' 'rebel' 'red_phoenix' 'rowancap' 'Rozzo'	\
	'amcthin' 'Banner3-D' 'Ghoulish' 'Bolger' 'Cards' 'Isometric1'	\
	'Keyboard' 'lineblocks' 'Modular' 'Twisted' 'Whimsy')
figlet -w $(tput cols) -cf ${fonts[$[$RANDOM % ${#fonts[@]}] + 1]} welcome
echo ''
unset fonts

