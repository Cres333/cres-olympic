# 競技開始処理
## 初期化
function storage:settings/game
function storage:settings/score
function storage:settings/id

## モード追加
data merge storage main {mode:draft}

## ストレージに競技を設定
function core:play/priv/param/draft-game

## 参加数をリストに表示する
scoreboard objectives setdisplay list COUNT

## ゲーム実行中フラグ
scoreboard players set $play LOGOUT 1

## 競技選択処理
function draft:game/next
