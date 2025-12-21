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

# _vimrcの設定
$vimrcContent = @"
" 基本設定
syntax on
set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" テーマの有効化
colorscheme atom-dark-256

" プラグイン設定
" vim-smartpairs は自動的に有効化されます
" SnipMate は自動的に有効化されます
"@

Set-Content -Path "$HOME\_vimrc" -Value $vimrcContent -Encoding UTF8

Write-Host "Vim setup completed!"
