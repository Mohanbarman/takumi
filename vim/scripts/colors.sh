#=============================================================================
# Copyright (c) 2017 deltaxflux
# Author: deltaxflux
# URL: github.com/deltaxflux
# License: GNU v.3
#"=============================================================================

# Check if color folder is present
if [ ! -d "~/.vim/colors/" ];then
	mkdir -p ~/.vim/colors
fi

# Load onedark colors
cp -r ~/.vim/plugged/onehalf/vim/colors/*.vim ~/.vim/colors

