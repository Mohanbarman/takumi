# Vim Installer

cd ~
rm -rf ~/.vim*

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clone Project
if [ ! -d "~/takumi" ];then
    git clone https://www.github.com/deltaxflux/takumi.git ~/takumi
fi

# Install Plugins
cd takumi
cat install/min.vim >> ~/.vimrc

# Install colorscheme
vim -c PlugInstall -c qa

# Fix onehalf colorscheme bug
sh scripts/colors.sh

# Load config files
cat config/main.vim >> ~/.vimrc
cat config/plugins/airline.vim >>  ~/.vimrc
cat config/colors.vim >> ~/.vimrc

vim -c PlugInstall -c qa

make

