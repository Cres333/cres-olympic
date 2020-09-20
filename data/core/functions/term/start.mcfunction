# ゲーム終了処理
## 破棄
scoreboard objectives remove _NEXT

## 全員をTP
gamemode adventure @a
spreadplayers 1059 -1346 8 32 false @a

## 表示設定
function core:term/priv/setting

## ゲーム終了テキスト
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.term.message"}

## ゲーム実行中フラグ
scoreboard players set $play LOGOUT 0

## ループ
function core:term/wait/gamemode
