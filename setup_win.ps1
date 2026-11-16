# スクリプトのディレクトリを取得
$ScriptDir = $PSScriptRoot

Write-Host "[1/3] テーマディレクトリを作成: $HOME\vimfiles\colors"
New-Item -ItemType Directory -Force -Path "$HOME\vimfiles\colors" | Out-Null

Write-Host "[2/3] atom-dark-256テーマを確認"
if (Test-Path "$HOME\vimfiles\colors\atom-dark-256.vim") {
    Write-Host "  インストール済みのためスキップ"
} else {
    Write-Host "  ダウンロード中..."
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/refs/heads/master/colors/atom-dark-256.vim" `
                      -OutFile "$HOME\vimfiles\colors\atom-dark-256.vim"
    Write-Host "  ダウンロード完了"
}

Write-Host "[3/3] .vimrcをコピー: $HOME\_vimrc"
Copy-Item "$ScriptDir\.vimrc" "$HOME\_vimrc"

Write-Host "完了: Vimのセットアップが終わりました"
