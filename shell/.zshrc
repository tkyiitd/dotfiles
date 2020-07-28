[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ '
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export GPG_TTY=$(tty)
alias v='mvim -v'
alias vim='mvim -v'
alias compiler='ssh 10.237.23.93'
#alias sri='ssh cs1160359@sri.cse.iitd.ac.in'
#alias home="ssh -t cs1160359@sri.cse.iitd.ac.in 'ssh tarun@10.237.23.93'"
#alias home="ssh -J cs1160359@sri.cse.iitd.ac.in tarun@10.237.23.93"
#alias zen="ssh -J cs1160359@sri.cse.iitd.ac.in tarun@zen.cse.iitd.ac.in"
#alias bigbox="ssh -J cs1160359@sri.cse.iitd.ac.in tarun@bigbox1.cse.iitd.ac.in"
#alias glados="ssh -J cs1160359@sri.cse.iitd.ac.in cs1160359@glados.cse.iitd.ac.in"

### VIM NOTES ###
alias note="vim $HOME/Desktop/notes/Philosophy/Thoughts/$(date +'%Y%m%d').md"
alias todo="vim $HOME/Desktop/notes/Todo/ToDo.md"
alias tobuy="vim $HOME/Desktop/notes/Todo/ToBuy.md"

alias getmail="offlineimap && mu index"
# --- set gcc as primary compiler --- #
export CC=/usr/local/Cellar/gcc@9/9.3.0/bin/gcc-9
export CXX=/usr/local/Cellar/gcc@9/9.3.0/bin/g++-9
export CPP=/usr/local/Cellar/gcc@9/9.3.0/bin/cpp-9
export LD=/usr/local/Cellar/gcc@9/9.3.0/bin/gcc-9
alias c++=/usr/local/Cellar/gcc@9/9.3.0/bin/c++-9
alias g++=/usr/local/Cellar/gcc@9/9.3.0/bin/g++-9
alias gcc=/usr/local/Cellar/gcc@9/9.3.0/bin/gcc-9
alias cpp=/usr/local/Cellar/gcc@9/9.3.0/bin/cpp-9
alias ld=/usr/local/Cellar/gcc@9/9.3.0/bin/gcc-9
alias cc=/usr/local/Cellar/gcc@9/9.3.0/bin/gcc-9
# --- set gcc as primary compiler --- #

# python2.7 path
# export PATH="/Users/tarun/Library/Python/2.7/bin:$PATH"

export HOMEBREW_NO_AUTO_UPDATE=1
if [ ! -d "$HOME/.zsh" ]
then
    mkdir -p "$HOME/.zsh"
    git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fi

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
#ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load?
plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh


### emacs-vterm config
function vterm_printf(){
    if [ -n "$TMUX" ]; then
        # Tell tmux to pass the escape sequences through
        # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}

vterm_prompt_end() {
    vterm_printf "51;A$(whoami)@$(hostname):$(pwd)";
}
setopt PROMPT_SUBST
PROMPT=$PROMPT'%{$(vterm_prompt_end)%}'
export PATH="/usr/local/opt/llvm/bin:/usr/local/smlnj/bin:$HOME/.emacs.d/bin:$PATH"
