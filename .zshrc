# ZSH User Config File
# Michael Cox

###################################
#              Stuff              #
###################################
zstyle :compinstall filename '/home/mcox59/.zshrc'
autoload -Uz compinit
compinit

###################################
#  History File Size & Location   #
###################################
setopt append_history
HISTFILE=~/.zsh.hist
HISTSIZE=10000
SAVEHIST=10000

###################################
#        Set VIM CMD editing      #
###################################
bindkey -v
bindkey "^?" backward-delete-char

###################################
#              Prompt             #
###################################
export PROMPT=$'%{\e[1;32m%}%{\e[44m%}%n%{\e[1;33m%}:%{\e[1;32m%}%m %{\e[44m%}%{\e[1;33m%}| %{\e[1;37m%}%~ %{\e[1;33m%}| %{\e[1;35m%}%{\e[44m%}'"[$(git branch 2> /dev/null | grep \* | cut -d ' ' -f2)]"$'%{\e[1;33m%}>%{\e[0m%} '


###################################
#              Editor             #
###################################
export EDITOR=/usr/bin/vim

###################################
#     Autoload Prompt On CD       #
###################################
autoload -U add-zsh-hook
add-zsh-hook chpwd update_prompt
function update_prompt(){
	PROMPT=$'%{\e[1;32m%}%{\e[44m%}%n%{\e[1;33m%}:%{\e[1;32m%}%m %{\e[44m%}%{\e[1;33m%}| %{\e[1;37m%}%~ %{\e[1;33m%}| %{\e[1;35m%}%{\e[44m%}'"[$(git branch 2> /dev/null | grep \* | cut -d ' ' -f2)]"$'%{\e[1;33m%}>%{\e[0m%} '
}

####################################
#        Include .zsh.aliases      #
####################################
source $HOME/.zsh.aliases

####################################
#          Load SSH Agent          #
####################################
if [ -f $HOME/.ssh/agent.sh ]; then
    source  $HOME/.ssh/agent.sh
fi

