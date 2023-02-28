[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# Turn off all beeps
unsetopt BEEP

export PATH="$PATH:/Applications/CMake.app/Contents/bin"

set -o vi 
export EDITOR=vim


# load functions
# dir="/Users/yinyixiang/scripts/"
# a=$(ls "$dir")
# for file in $a; do 
# 	source "$dir$file" 
# done

# enable the autosuggestions
#source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#bindkey '^K' autosuggest-accept
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#1c1c1c,bg=black,bold,underline"

# plugins (initialized before)  
# source ~/.zsh/plugins_before.zsh

# settings 
source ~/.zsh/settings.zsh

# Aliases
source ~/.shell/aliases.sh

# Custom prompt
source ~/.zsh/prompt.zsh 

# plugins (initialized after)   
source ~/.zsh/plugins_after.zsh 

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# type v to start nvim
alias v="nvim"
alias vf='nvim $(fzf)'
alias nf='nvim $(fzf)'
# alias vim="nvim"

alias gs="git status"
alias gc="git commit"
alias gp='git push'
alias up="cd .."
alias sl="ls"
alias gl="git log --all --graph --decorate"
# Use colors in coreutils utilities output
# alias ls='ls --color'
alias grep='grep --color'

# ls aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls'

# Aliases to protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

alias github='cd ~/scratch/github'
alias gh='cd ~/scratch/github'
alias cs50='cd ~/scratch/github/private/cs50'
alias note='cd /Users/yinyixiang/Library/"Mobile Documents"/iCloud~md~obsidian/Documents/"A folder"/note'
alias n='echo /Users/yinyixiang/Library/"Mobile Documents"/iCloud~md~obsidian/Documents/"A folder"/note'
alias du='du -sh'
alias tm='tmux'
alias dc='cd'
export HISTSIZE=200000
export HISTFILESIZE=200000
alias tl='tmux ls'
alias up='cd ..'
alias ta='tmux a'
alias o='open'
alias t='tmux'
alias e='exit'
alias py='python3'


#alias rm='rm -i'
# convert from markdown to pdf with wkhtmltopdf 
# pandoc resume.md -f markdown -t pdf --pdf-engine=wkhtmltopdf -s -o resume.pdf

# cd ~/playground
# python3 ./note/goal-bucket/print_recent_goal.py

# opam configuration
[[ ! -r /Users/yinyixiang/.opam/opam-init/init.zsh ]] || source /Users/yinyixiang/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
