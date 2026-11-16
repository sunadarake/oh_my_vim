# setupでプラグインを追加するのをやめる

## 概要
setup スクリプトでのVimプラグインのインストールをやめる。テーマ(atom-dark-256)のDLと.vimrcのコピーは残す。

## 調査結果
- `setup_linux.sh` と `setup_mac.sh` は同一内容。SnipMate(+依存2つ)・smartpairs・bracketed-paste・ctrlp を git clone している
- `setup_win.ps1` も同様の処理
- `.vimrc`(Shift-JIS)の90〜92行目に SnipMate 用の設定がある
- `README.md` に「使用しているプラグイン」節がある

## 実装計画
- [x] ステップ1: setup_linux.sh / setup_mac.sh からプラグイン関連処理を削除
- [x] ステップ2: setup_win.ps1 からプラグイン関連処理を削除
- [x] ステップ3: .vimrc の SnipMate 設定(90〜92行目)を、文字コードを保ったまま削除
- [x] ステップ4: README.md の「使用しているプラグイン」節を削除

## テスト・確認方法
- [x] `sh -n` でシェルの構文確認、プラグイン関連の文字列が残っていないこと
- [x] .vimrc が Shift-JIS のまま、他の行が変わっていないこと(diff)

## 決定事項
- テーマのDLは残す
- .vimrc の SnipMate 設定行も削除する

## 懸念点・未決事項
- なし
