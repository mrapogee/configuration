
apt-get update

# vim
apt-get --assume-yes install neovim

# zsh
apt-get --assume-yes install zsh
cat ./zshenv | tee -a /etc/zsh/zshenv
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

