# 現在のディレクトリを保存
$OriginalDir = Get-Location

# スクリプトのディレクトリを取得
$ScriptDir = $PSScriptRoot

# プラグインディレクトリの作成
New-Item -ItemType Directory -Force -Path "$HOME\vimfiles\pack\SnipMate\start"
New-Item -ItemType Directory -Force -Path "$HOME\vimfiles\pack\smartpairs\start"

# SnipMateプラグインのインストール
Set-Location "$HOME\vimfiles\pack\SnipMate\start"

if (Test-Path "vim-snipmate") {
    Write-Host "vim-snipmate is already installed. Skipping..."
} else {
    git clone https://github.com/garbas/vim-snipmate.git
}

if (Test-Path "vim-addon-mw-utils") {
    Write-Host "vim-addon-mw-utils is already installed. Skipping..."
} else {
    git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
}

if (Test-Path "tlib_vim") {
    Write-Host "tlib_vim is already installed. Skipping..."
} else {
    git clone https://github.com/tomtom/tlib_vim.git
}

# vim-smartpairsプラグインのインストール
if (Test-Path "$HOME\vimfiles\pack\smartpairs\start\vim-smartpairs") {
    Write-Host "vim-smartpairs is already installed. Skipping..."
} else {
    git clone https://github.com/gosukiwi/vim-smartpairs.git `
              "$HOME\vimfiles\pack\smartpairs\start\vim-smartpairs"
}

# vim-bracketed-pasteプラグインのインストール
New-Item -ItemType Directory -Force -Path "$HOME\vimfiles\pack\bracketed-paste\start"
if (Test-Path "$HOME\vimfiles\pack\bracketed-paste\start\vim-bracketed-paste") {
    Write-Host "vim-bracketed-paste is already installed. Skipping..."
} else {
    git clone https://github.com/ConradIrwin/vim-bracketed-paste `
              "$HOME\vimfiles\pack\bracketed-paste\start\vim-bracketed-paste"
}

# ctrlp.vimプラグインのインストール
New-Item -ItemType Directory -Force -Path "$HOME\vimfiles\pack\ctrlp\start"
if (Test-Path "$HOME\vimfiles\pack\ctrlp\start\ctrlp.vim") {
    Write-Host "ctrlp.vim is already installed. Skipping..."
} else {
    git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git `
              "$HOME\vimfiles\pack\ctrlp\start\ctrlp.vim"
}

# テーマディレクトリの作成
New-Item -ItemType Directory -Force -Path "$HOME\vimfiles\colors"

# atom-dark-256テーマのダウンロード
if (Test-Path "$HOME\vimfiles\colors\atom-dark-256.vim") {
    Write-Host "atom-dark-256 theme is already installed. Skipping..."
} else {
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/refs/heads/master/colors/atom-dark-256.vim" `
                      -OutFile "$HOME\vimfiles\colors\atom-dark-256.vim"
}

# .vimrcをコピー
Copy-Item "$ScriptDir\.vimrc" "$HOME\_vimrc"

Write-Host "Vim setup completed!"

# 元のディレクトリに戻る
Set-Location $OriginalDir
