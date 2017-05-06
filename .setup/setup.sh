
sudo apt-get update

# vim
sudo apt-get --assume-yes install neovim

# zsh
sudo apt-get --assume-yes install zsh
cat ./zshenv | tee -a /etc/zsh/zshenv
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

