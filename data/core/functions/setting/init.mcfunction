# 初期化
## 箱を生成する
clone 2 1 37 2 2 38 1269 44 -1346

## デフォルト競技を登録する
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

## 初期化メッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.select.reset"}

## チェックループ
function core:setting/wait/check
