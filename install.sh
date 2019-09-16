echo "-->to be install components..."
# Install vim
## Declare the packge need in build stage
buildDeps="git curl build-base ctags libx11-dev libxpm-dev libxt-dev make ncurses-dev"
langDeps="python python-dev"
apk update
## Install the package need in build stage
apk add ${buildDeps}
apk add ${langDeps}
apk update
## Install vim main program
cd /tmp
git clone https://github.com/vim/vim 
cd /tmp/vim
./configure
make install

# install pip
apk add python3-pip 
# Install plugin
## Install Pathogen from https://github.com/tpope/vim-pathogen (Plugin controller)
if [ ! -d  "/root/.vim" ]; then
    mkdir -p /root/.vim/autoload /root/.vim/bundle
    curl -LSso /root/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi
## Install Auto Pair from https://github.com/jiangmiao/auto-pairs
git clone git://github.com/jiangmiao/auto-pairs.git /root/.vim/bundle/auto-pairs
### Install coc.nvim
#### Install latest stable nodejs
#curl -sL install-node.now.sh/lts | bash
apk add nodejs 
apk add npm 
#### coc.nvim
git clone git://github.com/neoclide/coc.nvim.git --branch release /root/.vim/bundle/coc.nvim
#### Install Python Snippet 
python3 -m pip install --user python-language-server
### Install indentLine from https://github.com/Yggdroot/indentLine
### Description: Displaying thin vertical lines at each indentation level for code indented with spaces.
git clone https://github.com/Yggdroot/indentLine.git /root/.vim/bundle/indentLine
### Install NERDTree from https://github.com/scrooloose/nerdtree
### Description: A file system explorer for the Vim editor.
git clone https://github.com/scrooloose/nerdtree.git /root/.vim/bundle/nerdtree
### Install Lightline.vim  from https://github.com/itchyny/lightline.vim.git
git clone https://github.com/itchyny/lightline.vim.git /root/.vim/bundle/lightline
### Install vim-airline from https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline /root/.vim/bundle/vim-airline

## Clear buildDeps
apk del --purge ${buildDeps}
