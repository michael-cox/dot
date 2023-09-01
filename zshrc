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

source ~/.zsh.colors
###################################
#              Prompt             #
###################################
# export PROMPT=$'%{\e[1;32m%}%{\e[101m%}%n%{\e[1;33m%}:%{\e[1;32m%}%m %{\e[101m%}%{\e[1;33m%}| %{\e[1;37m%}%~ %{\e[1;33m%}| %{\e[1;35m%}%{\e[101m%}'"[$(git branch 2> /dev/null | grep \* | cut -d ' ' -f2)]"$'%{\e[1;33m%}>%{\e[0m%} '
export PROMPT=$COLOR9_BG$COLOR214_FG$'%n'$COLOR222_FG$':'$COLOR214_FG$'%m '$COLOR222_FG$'| '$COLOR255_FG$'%~ '$COLOR222_FG$'| '$COLOR218_FG"["$COLOR230_FG"$(git branch --show-current 2> /dev/null)"$COLOR218_FG"]"$COLOR222_FG$' >'$COLOR_RESET_BG$COLOR_RESET_FG$' '


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
	# PROMPT=$'%{\e[1;32m%}%{\e[101m%}%n%{\e[1;33m%}:%{\e[1;32m%}%m %{\e[101m%}%{\e[1;33m%}| %{\e[1;37m%}%~ %{\e[1;33m%}| %{\e[1;35m%}%{\e[101m%}'"[$(git branch 2> /dev/null | grep \* | cut -d ' ' -f2)]"$'%{\e[1;33m%}>%{\e[0m%} '
    PROMPT=$COLOR9_BG$COLOR214_FG$'%n'$COLOR222_FG$':'$COLOR214_FG$'%m '$COLOR222_FG$'| '$COLOR255_FG$'%~ '$COLOR222_FG$'| '$COLOR218_FG"["$COLOR230_FG"$(git branch --show-current 2> /dev/null)"$COLOR218_FG"]"$COLOR222_FG$' >'$COLOR_RESET_BG$COLOR_RESET_FG$' '
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

PATH="/home/miccox3/.local/bin:/home/miccox3/.local/python/bin:"$PATH
