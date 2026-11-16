#!/bin/sh

# スクリプトのディレクトリを取得
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

echo "[1/3] テーマディレクトリを作成: ~/.vim/colors"
mkdir -p ~/.vim/colors

echo "[2/3] atom-dark-256テーマを確認"
if [ -f ~/.vim/colors/atom-dark-256.vim ]; then
    echo "  インストール済みのためスキップ"
else
    echo "  ダウンロード中..."
    curl -sS -o ~/.vim/colors/atom-dark-256.vim \
         https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/refs/heads/master/colors/atom-dark-256.vim || exit 1
    echo "  ダウンロード完了"
fi

echo "[3/3] .vimrcをコピー: ~/.vimrc"
cp "$SCRIPT_DIR/.vimrc" ~/.vimrc

echo "完了: Vimのセットアップが終わりました"
