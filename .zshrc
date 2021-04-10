# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

# Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#  source /usr/share/zsh/manjaro-zsh-prompt
#fi

# autoload -Uz compinit && compinit
# zstyle ':completion:*' menu yes select

# History 
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# set defauld editor 
export EDITOR=vim

#autoload -U colors && colors

# custom prompt
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
RPS1="%B%(?.%F{green}√.%F{red}✗[%?])%f%{$fg[red]%}[%{$fg[yellow]%}%h%%%{$fg[red]%}][%{$fg[green]%}%*%{$fg[red]%}]%{$reset_color%}%b"

# load aliases
if [ -f ~/.zsh/aliases ]; then
        source ~/.zsh/aliases
else
        print "Error: ~/.zsh/aliases not found."
fi

# greetings
# if neofetch not installed run command line greetings
if [ -f /usr/bin/neofetch ]; then
        neofetch
else
        echo $USER@$HOST  $(uname -srm) $(lsb_release -rcs)
fi
