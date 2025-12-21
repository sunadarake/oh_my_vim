# 現在のディレクトリを保存
$OriginalDir = Get-Location

# スクリプトのディレクトリを取得
$ScriptDir = $PSScriptRoot

# プラグインディレクトリの作成
New-Item -ItemType Directory -Force -Path "$HOME\vimfiles\pack\SnipMate\start"
New-Item -ItemType Directory -Force -Path "$HOME\vimfiles\pack\smartpairs\start"

# SnipMateプラグインのインストール
Set-Location "$HOME\vimfiles\pack\SnipMate\start"
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/tomtom/tlib_vim.git

# vim-smartpairsプラグインのインストール
git clone https://github.com/gosukiwi/vim-smartpairs.git `
          "$HOME\vimfiles\pack\smartpairs\start\vim-smartpairs"

# テーマディレクトリの作成
New-Item -ItemType Directory -Force -Path "$HOME\vimfiles\colors"

# atom-dark-256テーマのダウンロード
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/refs/heads/master/colors/atom-dark-256.vim" `
                  -OutFile "$HOME\vimfiles\colors\atom-dark-256.vim"

# .vimrcをコピー
Copy-Item "$ScriptDir\.vimrc" "$HOME\_vimrc"

Write-Host "Vim setup completed!"

# 元のディレクトリに戻る
Set-Location $OriginalDir
