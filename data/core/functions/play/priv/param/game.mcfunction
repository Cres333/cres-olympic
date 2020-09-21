# ストレージに競技を設定
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

## 競技をコピー
data remove storage play playing
data modify storage play playing set from storage play games

## チーム戦必須のゲーム
execute unless data storage main {mode:multi} run data remove storage play playing[{"type":"battle"}]
execute unless data storage main {mode:multi} run data remove storage play playing[{"type":"dodge"}]
execute unless data storage main {mode:multi} run data remove storage play playing[{"type":"relay"}]
execute unless data storage main {mode:multi} run data remove storage play playing[{"type":"soccer"}]
execute unless data storage main {mode:multi} run data remove storage play playing[{"type":"swim"}]
execute unless data storage main {mode:multi} run data remove storage play playing[{"type":"sky"}]

## 4人以上必須のゲーム
execute unless score $core:minNum _ matches 4.. run data remove storage play playing[{"type":"relay"}]
execute unless score $core:minNum _ matches 4.. run data remove storage play playing[{"type":"soccer"}]
execute unless score $core:minNum _ matches 4.. run data remove storage play playing[{"type":"swim"}]

## 3人以上必須のゲーム
execute unless score $core:minNum _ matches 3.. run data remove storage play playing[{"type":"dodge"}]

## 2人以上必須のゲーム
execute unless score $core:minNum _ matches 2.. run data remove storage play playing[{"type":"fenc"}]
