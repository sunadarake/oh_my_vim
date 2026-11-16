# スクリプトのディレクトリを取得
$ScriptDir = $PSScriptRoot

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
