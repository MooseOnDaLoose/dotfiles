# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mason/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mason/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mason/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mason/google-cloud-sdk/completion.zsh.inc'; fi

autoload -Uz compinit && compinit

# Load colors
autoload -U colors && colors
# Format your prompt using the colors
export PS1="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[magenta]%}%m %{$fg[cyan]%}%~ %{$reset_color%}%% "

# Load rbenv automatically
eval "$(rbenv init -)"

FPATH="$HOME/.docker/completions:$FPATH"
autoload -Uz compinit
compinit

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/mason/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

export GPG_TTY=$(tty)

# Added by Antigravity
export PATH="/Users/mason/.antigravity/antigravity/bin:$PATH"

# Terminal History
HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%Y-%m-%d %T "

setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
HIST_STAMPS="%F %T"
