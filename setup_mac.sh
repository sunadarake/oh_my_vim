#!/bin/sh

# スクリプトのディレクトリを取得
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

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
