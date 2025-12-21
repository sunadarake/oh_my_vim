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
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/tomtom/tlib_vim.git

# vim-smartpairsプラグインのインストール
git clone https://github.com/gosukiwi/vim-smartpairs.git \
          ~/.vim/pack/smartpairs/start/vim-smartpairs

# テーマディレクトリの作成
mkdir -p ~/.vim/colors

# atom-dark-256テーマのダウンロード
curl -o ~/.vim/colors/atom-dark-256.vim \
     https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/refs/heads/master/colors/atom-dark-256.vim

# .vimrcをコピー
cp "$SCRIPT_DIR/.vimrc" ~/.vimrc

echo "Vim setup completed!"

# 元のディレクトリに戻る
cd "$ORIGINAL_DIR"
