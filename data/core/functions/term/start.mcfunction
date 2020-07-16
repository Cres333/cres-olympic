# ゲーム終了処理
## 破棄
scoreboard objectives remove _NEXT

## 競技を再ロード
data remove storage play games
data modify storage play games append from block 1269 45 -1346 Items[{Slot:9b}].tag.game
data modify storage play games append from block 1269 45 -1346 Items[{Slot:10b}].tag.game
data modify storage play games append from block 1269 45 -1346 Items[{Slot:11b}].tag.game
data modify storage play games append from block 1269 45 -1346 Items[{Slot:12b}].tag.game
data modify storage play games append from block 1269 45 -1346 Items[{Slot:13b}].tag.game
data modify storage play games append from block 1269 45 -1346 Items[{Slot:14b}].tag.game
data modify storage play games append from block 1269 45 -1346 Items[{Slot:15b}].tag.game
data modify storage play games append from block 1269 45 -1346 Items[{Slot:16b}].tag.game
data modify storage play games append from block 1269 45 -1346 Items[{Slot:17b}].tag.game

## 全員をTP
gamemode adventure @a
spreadplayers 1059 -1346 8 32 false @a

## 表示設定
function core:term/priv/setting

## ゲーム終了テキスト
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.term.message"}

## ループ
function core:term/wait/gamemode
