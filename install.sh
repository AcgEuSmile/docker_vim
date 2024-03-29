echo "-->to be install components..."
# Install vim
## Declare the packge need in build stage
buildDeps="software-properties-common git curl"
apt-get update
## Install the package need in build stage
apt-get install -y ${buildDeps}
add-apt-repository ppa:jonathonf/vim
apt-get update
apt-get install vim -y
# install pip
apt-get install python3-pip -y
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
apt-get install nodejs -y
apt-get install npm -y
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
apt-get purge -y --auto-remove ${buildDeps}
