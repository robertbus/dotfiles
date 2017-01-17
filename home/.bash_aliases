# BASH aliases

alias grep='grep --color=auto'

alias ls='ls -G'
alias ll='ls -al'
alias l='ll'

alias mkdir='mkdir -p'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias svim='sudo vim'
alias svi='sudo vi'

alias hgrep='history | grep'

alias w.sze='curl wttr.in/szeged'
alias w.gib='curl wttr.in/gibraltar'
alias w.lon='curl wttr.in/london'

#alias gbpeur='~/Projects/personal/currency/exchangeRate.sh GBPEUR'
#alias gbphuf='~/Projects/personal/currency/exchangeRate.sh GBPHUF'
#alias eurhuf='~/Projects/personal/currency/exchangeRate.sh EURHUF'

# git
#alias git_branch_local_cleanup='git branch --merged | grep -E -v 'master$|develop$' | xargs git branch -d'
