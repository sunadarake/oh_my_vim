# Oh My Vim

## 目的

Vimの初期設定を自動化する。

新しいPCでも、スクリプトを1つ実行するだけで同じ環境にするために作った。

## セットアップ

```bash
git clone <このリポジトリのURL>
cd oh_my_vim

# Linux
./setup_linux.sh

# macOS
./setup_mac.sh

# Windows (PowerShell)
./setup_win.ps1
```

## 使い方

上のセットアップを実行すると、Vimの設定が反映される。

再実行しても、導入済みのテーマはスキップされる。

`.vimrc` は毎回上書きされる。

## 仕様

| 項目 | Linux / macOS | Windows |
|:-|:-|:-|
| `.vimrc` のコピー先 | `~/.vimrc` | `$HOME\_vimrc` |
| テーマの保存先 | `~/.vim/colors/` | `$HOME\vimfiles\colors\` |

| 機能 | 説明 |
|:-|:-|
| テーマ | [atom-dark-256](https://github.com/gosukiwi/vim-atom-dark) を取得して適用する |
| プラグイン | インストールしない |
