mv ~/dotfiles/.bash_profile ~/.bash_profile
mv ~/dotfiles/.bashrc ~/.bashrc

git clone https://github.com/powerline/fonts.git ~/.cache/powerline_fonts --depth=1
sh ~/.cache/powerline_fonts/install.sh

# mac
brew install fzf
brew install universal-ctags

# lsp
gem install solargraph
npm install -g typescript typescript-language-server
npm install -g vue-language-server
