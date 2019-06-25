set -x PATH /usr/local/bin $PATH
set -U FZF_LEGACY_KEYBINDINGS 0

# nodebrew PATH
set -x PATH /usr/local/var/nodebrew/current/bin $PATH
set -x PATH ~/.nodebrew/current/bin $PATH

#rbenv
#if which rbenv > /dev/null; then eval "(rbenv init -)"; fi
set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/.rbenv/shims $PATH
#eval "(rbenv init -)"

alias v="env nvim"
alias vf="env nvim ~/.config/fish/config.fish"

alias sf="env source ~/.config/fish/config.fish"
alias pc="env pbcopy <"
alias l="env ls -ltr"
alias la="env ls -a"
alias ll="env ls -l"
alias p="env python3"

# git
alias g='env git'
alias gs='env git status -sb'
alias gco='env git checkout'
alias gp='env git pull'
alias gd='env git diff'
alias gl='env git log --graph --date=short --pretty=\"format:%C(yellow)%h %C(cyan)%ad %C(green)%an%Creset%x09%s %C(red)%d%Creset\"'
alias ga='env git add'
alias gc='env git commit -m'

# rails
alias ra="env bin/rails"
alias ras="env bin/rails s"
alias rac="env bin/rails c"
alias rar="env bin/rails routes"
alias ram="env bin/rails db:migrate"
alias rasp="env bin/rspec"
