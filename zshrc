# Set up the prompt
PROMPT='%B%F{blue}%1~ %f%F{11}$%f%b '
autoload -Uz promptinit
promptinit
# prompt adam1
# Alias Attempt
alias ms-teams='brave --app=https://teams.microsoft.com/'
alias google-sms='brave --app=https://messages.google.com/web/conversations'
alias ls="ls -a"
alias stable-diffusion='/home/ianrecker/stable-diffusion-webui/webui.sh'
setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# zstyle ':completion:*' list-colors ''
# zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
# zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
# zstyle ':completion:*' menu select=long
# zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
# zstyle ':completion:*' use-compctl false
# zstyle ':completion:*' verbose true
#
# zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
# zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ianrecker/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ianrecker/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ianrecker/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ianrecker/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# xbindkeys
xbindkeys &


# The Fuck - Terminal Command Corrector
eval $(thefuck --alias)

export PATH=$PATH:/home/ianrecker/.spicetify

export FZF_DEFAULT_COMMAND="find -L"
####### WARNING! DON'T EDIT BELOW THIS LINE! ##########
export PATH="$PATH:/home/ianrecker/.local/bin"
#export PATH="/$HOME/.local/bin:$PATH"

