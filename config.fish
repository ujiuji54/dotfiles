set -x PATH /usr/local/bin $PATH
set -U FZF_LEGACY_KEYBINDINGS 0

# nodebrew PATH
set -x PATH /usr/local/var/nodebrew/current/bin $PATH
set -x PATH ~/.nodebrew/current/bin $PATH

alias v="env nvim"
alias vf="env nvim ~/.config/fish/config.fish"

alias l="env ls -ltr"
alias la="env ls -a"
alias ll="env ls -l"
alias p="env python3"

# git
alias g='env git'
alias gs='env git status -sb'
alias gco='env git checkout'
alias gp='env git pull'

# rails
alias ra="env bin/rails"
alias rac="env bin/rails c"
alias rar="env bin/rails routes"
alias ram="env bin/rails db:migrate"
alias ras="env bin/rspec"
