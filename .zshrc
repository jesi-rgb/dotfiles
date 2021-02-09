# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# eval "$(starship init bash)"

alias s="git status"
alias pip="pip3"
alias jl="jupyter lab"
alias python="python3"
alias b="gh repo view --web"
alias rmrf="rm -r -f"

m() {
    git commit -m "$@"
    git push
}

lg() {
    ls -a | grep $@
}




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Path to your oh-my-zsh installation.
export ZSH="/Users/jesi/.oh-my-zsh"
export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'


PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)

plugins=(git virtualenv)

source $ZSH/oh-my-zsh.sh
# PROMPT="%m%$ "