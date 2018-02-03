#/bin/zsh

rm -rf "~/.zsh*"
rm -rf "~/.zim*"
rm -rf "~/.oh*"
rm -rf "~/.fish*"

# clone new zsh shell
if [ ! -d ~/.zim ];then
    git clone --recursive https://github.com/Eriner/zim.git ${ZDOTDIR:-${HOME}}/.zim
fi

setopt EXTENDED_GLOB
for template_file ( ${ZDOTDIR:-${HOME}}/.zim/templates/* ); do
  user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
  touch ${user_file}
  ( print -rn "$(<${template_file})$(<${user_file})" >! ${user_file} ) 2>/dev/null
done

chsh -s =zsh
source ${ZDOTDIR:-${HOME}}/.zlogin

