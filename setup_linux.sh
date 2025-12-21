#!/bin/sh

# 現在のディレクトリを保存
ORIGINAL_DIR=$(pwd)

# スクリプトのディレクトリを取得
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

# プラグインディレクトリの作成
mkdir -p ~/.vim/pack/SnipMate/start
mkdir -p ~/.vim/pack/smartpairs/start

# SnipMateプラグインのインストール
cd ~/.vim/pack/SnipMate/start

if [ -d "vim-snipmate" ]; then
    echo "vim-snipmate is already installed. Skipping..."
else
    git clone https://github.com/garbas/vim-snipmate.git
fi

if [ -d "vim-addon-mw-utils" ]; then
    echo "vim-addon-mw-utils is already installed. Skipping..."
else
    git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
fi

if [ -d "tlib_vim" ]; then
    echo "tlib_vim is already installed. Skipping..."
else
    git clone https://github.com/tomtom/tlib_vim.git
fi

# vim-smartpairsプラグインのインストール
if [ -d ~/.vim/pack/smartpairs/start/vim-smartpairs ]; then
    echo "vim-smartpairs is already installed. Skipping..."
else
    git clone https://github.com/gosukiwi/vim-smartpairs.git \
              ~/.vim/pack/smartpairs/start/vim-smartpairs
fi

# vim-bracketed-pasteプラグインのインストール
mkdir -p ~/.vim/pack/bracketed-paste/start
if [ -d ~/.vim/pack/bracketed-paste/start/vim-bracketed-paste ]; then
    echo "vim-bracketed-paste is already installed. Skipping..."
else
    git clone https://github.com/ConradIrwin/vim-bracketed-paste \
              ~/.vim/pack/bracketed-paste/start/vim-bracketed-paste
fi

# テーマディレクトリの作成
mkdir -p ~/.vim/colors

# atom-dark-256テーマのダウンロード
if [ -f ~/.vim/colors/atom-dark-256.vim ]; then
    echo "atom-dark-256 theme is already installed. Skipping..."
else
    curl -o ~/.vim/colors/atom-dark-256.vim \
         https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/refs/heads/master/colors/atom-dark-256.vim
fi

# .vimrcをコピー
cp "$SCRIPT_DIR/.vimrc" ~/.vimrc

echo "Vim setup completed!"

# 元のディレクトリに戻る
cd "$ORIGINAL_DIR"
