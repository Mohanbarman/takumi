# Nvim Installer
rm -rf ~/.config/nvim*

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clone Project
if [ ! -d ~/takumi ];then
    git clone https://www.github.com/deltaxflux/takumi.git ~/takumi
fi

