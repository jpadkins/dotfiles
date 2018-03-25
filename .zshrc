bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jpadkins/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# ZPLUG
source ~/.zplug/init.zsh

zplug "mafredri/zsh-async", from:github, defer:0
zplug "lib/completion", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:3
#zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi

zplug load
#

# Aliases
alias sudo='sudo '
alias sl='sl && ls'
alias rm='trash-put'
alias ls='ls --color'
alias 4k='xrandr -s 3840x2160'
alias re_source="source ~/.zshrc"
alias wisdom='fortune | cowsay -f tux'
alias fixfont='setfont latarcyrheb-sun32'
alias re_polybar='~/.config/polybar/launch.sh'
#

# Environment Vars
source $HOME/.zshenv

# Prompt theme
autoload -Uz promptinit
promptinit
prompt walters

# Set terminal colors to Wal theme
(wal -r &)

# Silly ascii-art welcome message
echo ''
fonts=('Bloody' '3d_diagonal' 'Acrobatic' '3d' 'dietcola' '3D-ASCII' 'fire_font-k'    \
        'NScript' 'OS2' 'Poison' 'Rammstein' 'rebel' 'red_phoenix' 'Roman' 'rowancap' \
        'Rozzo' 'amcrazo2' 'amcrazor' 'amcthin' 'Banner3-D' 'Fraktur' 'Ghoulish'      \
        'Bolger' 'Cards' 'Chiseled' 'Isometric1' 'Keyboard' 'lineblocks' 'Sub-Zero'   \
        'Modular' 'Twisted' 'Univers' 'Whimsy')
figlet -w $(tput cols) -cf ${fonts[$[$RANDOM % ${#fonts[@]}] + 1]} welcome
echo ''
unset fonts
