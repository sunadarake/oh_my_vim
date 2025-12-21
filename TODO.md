# setupファイルを作成する

3つのファイルを作成してほしい。

setup_linux.sh
setup_mac.sh
setup_win.ps1

要件は以下の通り。

- プラグインのディレクトリがなければ作成する
- プラグインに以下のプラグインを追加する

### snipMate

% mkdir -p ~/.vim/pack/SnipMate/start
% cd ~/.vim/pack/SnipMate/start
% git clone https://github.com/garbas/vim-snipmate.git
% git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/tomtom/tlib_vim.git

### vim-smartpairs

git clone https://github.com/gosukiwi/vim-smartpairs.git \
            ~/.vim/pack/{whatever name you want}/start/vim-smartpairs

- テーマのディレクトリがなければ作成する
- テーマに以下を追加する

https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/refs/heads/master/colors/atom-dark-256.vim


