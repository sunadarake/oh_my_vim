# Oh My Vim - vimの初期設定をするプロジェクト

Vimのsetupをするためのプロジェクト。

Windows/MacOS/Linuxで対応する。

## プロジェクトの取り組み方について

* なるべくコードやコメントをシンプルに簡潔にすること。 
* コメントはUTF-8の日本語で書くこと。 
* 問題に取り組む前に、コードや仕様を読んで理解すること。 

## Bashについて

bashを使わずにbusyboxを使う様にしてください。

## 構成と注意点

* `setup_linux.sh` / `setup_mac.sh` / `setup_win.ps1` は、テーマのダウンロードと `.vimrc` のコピーだけを行う。プラグインのインストールはしない。
* `setup_linux.sh` と `setup_mac.sh` は同一内容に保つこと。
