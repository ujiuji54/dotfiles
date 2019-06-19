cp ~/dotfiles/.bash_profile ~/.bash_profile
cp ~/dotfiles/.bashrc ~/.bashrc
cp ~/dotfiles/.xonshrc ~/.xonshrc

git clone https://github.com/powerline/fonts.git ~/.cache/powerline_fonts --depth=1
sh ~/.cache/powerline_fonts/install.sh

# mac
brew install fzf
brew install universal-ctags
brew install xonsh
brew install bash-completion2

# lsp
gem install solargraph
npm install -g typescript typescript-language-server
npm install -g vue-language-server
