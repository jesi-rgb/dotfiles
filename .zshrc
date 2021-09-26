# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# eval "$(starship init bash)"


alias pip="pip3"
alias python="python3"

jltf(){
    echo "$PWD"
    docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes --memory="5g" --cpus="4" -v $(pwd):/home/jovyan/work gaarv/jupyter-keras
}

alias b="gh repo view --web"
alias s="git status"

alias rmrf="rm -r -f"

alias ayy="echo ayy lmao"
alias carla="echo carla es puta"
alias rosanita="echo amo a rosanita <3"

alias jl="jupyter lab"

m() {
    git commit -m "$@"
    git push
}

lg() {
    ls -a | grep $@
}

templatex() { 
    echo "$PWD/$1"
    mkdir $1
    cd $1
    cp ~/repositorios/.templatex.zip $PWD
    unzip .templatex.zip
    rm .templatex.zip
}




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/opt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

export MACMINI="jesi@192.168.1.45"

# Path to your oh-my-zsh installation.
export ZSH="/Users/jesi/.oh-my-zsh"
export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'

export IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
export DISPLAY="${IP}:0"

PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)

plugins=(git virtualenv)

source $ZSH/oh-my-zsh.sh
# PROMPT="%m%$ "
eval "$(direnv hook zsh)"
