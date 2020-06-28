# ストレージに競技を設定
## ラージチェストから情報を取得
## TODO: 座標
data modify storage play games append from block 0 0 0 Items[{Slot:9b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:10b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:11b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:12b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:13b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:14b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:15b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:16b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:17b}].tag.game

## チーム戦必須のゲーム
execute unless data storage main {mode:multi} run data remove storage play games[{"type":"battle"}]
execute unless data storage main {mode:multi} run data remove storage play games[{"type":"dodge"}]
execute unless data storage main {mode:multi} run data remove storage play games[{"type":"relay"}]
execute unless data storage main {mode:multi} run data remove storage play games[{"type":"soccer"}]
execute unless data storage main {mode:multi} run data remove storage play games[{"type":"swim"}]

## 4人以上必須のゲーム
execute unless score $core:minNum _ matches 4.. run data remove storage play games[{"type":"relay"}]
execute unless score $core:minNum _ matches 4.. run data remove storage play games[{"type":"soccer"}]
execute unless score $core:minNum _ matches 4.. run data remove storage play games[{"type":"swim"}]

## 3人以上必須のゲーム
execute unless score $core:minNum _ matches 3.. run data remove storage play games[{"type":"dodge"}]
