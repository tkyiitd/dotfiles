[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias v='mvim -v'
alias vim='mvim -v'

export GPG_TTY=$(tty)
# --- set gcc as primary compiler --- #
#export CC=/usr/local/bin/gcc-9
#export CXX=/usr/local/bin/g++-9
#export CPP=/usr/local/bin/cpp-9
#export LD=/usr/local/bin/gcc-9
#alias c++=/usr/local/bin/c++-9
#alias g++=/usr/local/bin/g++-9
#alias gcc=/usr/local/bin/gcc-9
#alias cpp=/usr/local/bin/cpp-9
#alias ld=/usr/local/bin/gcc-9
#alias cc=/usr/local/bin/gcc-9
# --- set gcc as primary compiler --- #

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
vterm_prompt_end(){
    vterm_printf "51;A$(whoami)@$(hostname):$(pwd)"
}
PS1=$PS1'\[$(vterm_prompt_end)\]'
